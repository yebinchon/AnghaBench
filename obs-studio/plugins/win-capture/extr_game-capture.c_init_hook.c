
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct game_capture {int active; scalar_t__ retrying; int * next_window; int * window; int hook_init; TYPE_1__ config; } ;
struct dstr {int array; int member_0; } ;


 scalar_t__ CAPTURE_MODE_ANY ;
 int SetEvent (int ) ;
 int attempt_existing_hook (struct game_capture*) ;
 int dstr_free (struct dstr*) ;
 scalar_t__ get_window_exe (struct dstr*,int *) ;
 int info (char*,int ) ;
 int init_events (struct game_capture*) ;
 int init_hook_info (struct game_capture*) ;
 int init_keepalive (struct game_capture*) ;
 int init_pipe (struct game_capture*) ;
 int init_texture_mutexes (struct game_capture*) ;
 int inject_hook (struct game_capture*) ;
 int is_blacklisted_exe (int ) ;
 int open_target_process (struct game_capture*) ;
 scalar_t__ target_suspended (struct game_capture*) ;

__attribute__((used)) static bool init_hook(struct game_capture *gc)
{
 struct dstr exe = {0};
 bool blacklisted_process = 0;

 if (gc->config.mode == CAPTURE_MODE_ANY) {
  if (get_window_exe(&exe, gc->next_window)) {
   info("attempting to hook fullscreen process: %s",
        exe.array);
  }
 } else {
  if (get_window_exe(&exe, gc->next_window)) {
   info("attempting to hook process: %s", exe.array);
  }
 }

 blacklisted_process = is_blacklisted_exe(exe.array);
 if (blacklisted_process)
  info("cannot capture %s due to being blacklisted", exe.array);
 dstr_free(&exe);

 if (blacklisted_process) {
  return 0;
 }
 if (target_suspended(gc)) {
  return 0;
 }
 if (!open_target_process(gc)) {
  return 0;
 }
 if (!init_keepalive(gc)) {
  return 0;
 }
 if (!init_pipe(gc)) {
  return 0;
 }
 if (!attempt_existing_hook(gc)) {
  if (!inject_hook(gc)) {
   return 0;
  }
 }
 if (!init_texture_mutexes(gc)) {
  return 0;
 }
 if (!init_hook_info(gc)) {
  return 0;
 }
 if (!init_events(gc)) {
  return 0;
 }

 SetEvent(gc->hook_init);

 gc->window = gc->next_window;
 gc->next_window = ((void*)0);
 gc->active = 1;
 gc->retrying = 0;
 return 1;
}
