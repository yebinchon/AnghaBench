
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct game_capture {void* hook_exit; void* hook_ready; void* hook_init; void* hook_stop; void* hook_restart; } ;


 int EVENT_CAPTURE_RESTART ;
 int EVENT_CAPTURE_STOP ;
 int EVENT_HOOK_EXIT ;
 int EVENT_HOOK_INIT ;
 int EVENT_HOOK_READY ;
 int GetLastError () ;
 void* open_event_gc (struct game_capture*,int ) ;
 int warn (char*,int ) ;

__attribute__((used)) static inline bool init_events(struct game_capture *gc)
{
 if (!gc->hook_restart) {
  gc->hook_restart = open_event_gc(gc, EVENT_CAPTURE_RESTART);
  if (!gc->hook_restart) {
   warn("init_events: failed to get hook_restart "
        "event: %lu",
        GetLastError());
   return 0;
  }
 }

 if (!gc->hook_stop) {
  gc->hook_stop = open_event_gc(gc, EVENT_CAPTURE_STOP);
  if (!gc->hook_stop) {
   warn("init_events: failed to get hook_stop event: %lu",
        GetLastError());
   return 0;
  }
 }

 if (!gc->hook_init) {
  gc->hook_init = open_event_gc(gc, EVENT_HOOK_INIT);
  if (!gc->hook_init) {
   warn("init_events: failed to get hook_init event: %lu",
        GetLastError());
   return 0;
  }
 }

 if (!gc->hook_ready) {
  gc->hook_ready = open_event_gc(gc, EVENT_HOOK_READY);
  if (!gc->hook_ready) {
   warn("init_events: failed to get hook_ready event: %lu",
        GetLastError());
   return 0;
  }
 }

 if (!gc->hook_exit) {
  gc->hook_exit = open_event_gc(gc, EVENT_HOOK_EXIT);
  if (!gc->hook_exit) {
   warn("init_events: failed to get hook_exit event: %lu",
        GetLastError());
   return 0;
  }
 }

 return 1;
}
