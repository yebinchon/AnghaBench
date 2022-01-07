
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct game_capture {scalar_t__ process_id; int error_acquiring; int active; int thread_id; scalar_t__ next_window; TYPE_1__ config; } ;


 scalar_t__ CAPTURE_MODE_ANY ;
 scalar_t__ GetCurrentProcessId () ;
 int GetLastError () ;
 int GetWindowThreadProcessId (scalar_t__,scalar_t__*) ;
 int get_fullscreen_window (struct game_capture*) ;
 int get_selected_window (struct game_capture*) ;
 int init_hook (struct game_capture*) ;
 int stop_capture (struct game_capture*) ;
 int warn (char*,int ) ;

__attribute__((used)) static void try_hook(struct game_capture *gc)
{
 if (gc->config.mode == CAPTURE_MODE_ANY) {
  get_fullscreen_window(gc);
 } else {
  get_selected_window(gc);
 }

 if (gc->next_window) {
  gc->thread_id = GetWindowThreadProcessId(gc->next_window,
        &gc->process_id);


  if (gc->process_id == GetCurrentProcessId())
   return;

  if (!gc->thread_id && gc->process_id)
   return;
  if (!gc->process_id) {
   warn("error acquiring, failed to get window "
        "thread/process ids: %lu",
        GetLastError());
   gc->error_acquiring = 1;
   return;
  }

  if (!init_hook(gc)) {
   stop_capture(gc);
  }
 } else {
  gc->active = 0;
 }
}
