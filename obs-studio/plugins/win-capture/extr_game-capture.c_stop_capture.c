
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct game_capture {int active; int wait_for_target_startup; int capturing; scalar_t__ retrying; int * copy_texture; int * texture; scalar_t__* texture_mutexes; scalar_t__ target_process; scalar_t__ global_hook_info_map; scalar_t__ keepalive_mutex; scalar_t__ hook_data_map; scalar_t__ hook_init; scalar_t__ hook_exit; scalar_t__ hook_ready; scalar_t__ hook_stop; scalar_t__ hook_restart; int * app_sid; int * data; int * global_hook_info; int pipe; } ;


 int LocalFree (int *) ;
 int SetEvent (scalar_t__) ;
 int UnmapViewOfFile (int *) ;
 int close_handle (scalar_t__*) ;
 int gs_texture_destroy (int *) ;
 int info (char*) ;
 int ipc_pipe_server_free (int *) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void stop_capture(struct game_capture *gc)
{
 ipc_pipe_server_free(&gc->pipe);

 if (gc->hook_stop) {
  SetEvent(gc->hook_stop);
 }
 if (gc->global_hook_info) {
  UnmapViewOfFile(gc->global_hook_info);
  gc->global_hook_info = ((void*)0);
 }
 if (gc->data) {
  UnmapViewOfFile(gc->data);
  gc->data = ((void*)0);
 }

 if (gc->app_sid) {
  LocalFree(gc->app_sid);
  gc->app_sid = ((void*)0);
 }

 close_handle(&gc->hook_restart);
 close_handle(&gc->hook_stop);
 close_handle(&gc->hook_ready);
 close_handle(&gc->hook_exit);
 close_handle(&gc->hook_init);
 close_handle(&gc->hook_data_map);
 close_handle(&gc->keepalive_mutex);
 close_handle(&gc->global_hook_info_map);
 close_handle(&gc->target_process);
 close_handle(&gc->texture_mutexes[0]);
 close_handle(&gc->texture_mutexes[1]);

 if (gc->texture) {
  obs_enter_graphics();
  gs_texture_destroy(gc->texture);
  obs_leave_graphics();
  gc->texture = ((void*)0);
 }

 if (gc->active)
  info("capture stopped");

 gc->copy_texture = ((void*)0);
 gc->wait_for_target_startup = 0;
 gc->active = 0;
 gc->capturing = 0;

 if (gc->retrying)
  gc->retrying--;
}
