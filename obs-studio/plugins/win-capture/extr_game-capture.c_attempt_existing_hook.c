
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int executable; } ;
struct game_capture {scalar_t__ hook_restart; TYPE_1__ config; } ;


 int EVENT_CAPTURE_RESTART ;
 int SetEvent (scalar_t__) ;
 int debug (char*,int ) ;
 scalar_t__ open_event_gc (struct game_capture*,int ) ;

__attribute__((used)) static inline bool attempt_existing_hook(struct game_capture *gc)
{
 gc->hook_restart = open_event_gc(gc, EVENT_CAPTURE_RESTART);
 if (gc->hook_restart) {
  debug("existing hook found, signaling process: %s",
        gc->config.executable);
  SetEvent(gc->hook_restart);
  return 1;
 }

 return 0;
}
