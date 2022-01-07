
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hook_rate; } ;
struct game_capture {int wait_for_target_startup; float retry_interval; int next_window; TYPE_1__ config; int app_sid; int is_app; scalar_t__ process_id; } ;
typedef int HWND ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 int EVENT_CAPTURE_RESTART ;
 int GetWindowThreadProcessId (int ,scalar_t__*) ;
 int PROCESS_QUERY_INFORMATION ;
 int get_app_sid (scalar_t__) ;
 float hook_rate_to_float (int ) ;
 int is_app (scalar_t__) ;
 scalar_t__ open_event_gc (struct game_capture*,int ) ;
 scalar_t__ open_process (int ,int,scalar_t__) ;

__attribute__((used)) static void setup_window(struct game_capture *gc, HWND window)
{
 HANDLE hook_restart;
 HANDLE process;

 GetWindowThreadProcessId(window, &gc->process_id);
 if (gc->process_id) {
  process = open_process(PROCESS_QUERY_INFORMATION, 0,
           gc->process_id);
  if (process) {
   gc->is_app = is_app(process);
   if (gc->is_app) {
    gc->app_sid = get_app_sid(process);
   }
   CloseHandle(process);
  }
 }


 hook_restart = open_event_gc(gc, EVENT_CAPTURE_RESTART);
 if (hook_restart) {
  gc->wait_for_target_startup = 0;
  CloseHandle(hook_restart);
 }






 if (gc->wait_for_target_startup) {
  gc->retry_interval =
   3.0f * hook_rate_to_float(gc->config.hook_rate);
  gc->wait_for_target_startup = 0;
 } else {
  gc->next_window = window;
 }
}
