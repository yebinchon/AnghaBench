
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int EVENT_CAPTURE_RESTART ;
 int EVENT_CAPTURE_STOP ;
 int EVENT_HOOK_EXIT ;
 int EVENT_HOOK_INIT ;
 int EVENT_HOOK_READY ;
 int GetCurrentProcessId () ;
 void* init_event (int ,int ) ;
 void* signal_exit ;
 void* signal_init ;
 void* signal_ready ;
 void* signal_restart ;
 void* signal_stop ;

__attribute__((used)) static inline bool init_signals(void)
{
 DWORD pid = GetCurrentProcessId();

 signal_restart = init_event(EVENT_CAPTURE_RESTART, pid);
 if (!signal_restart) {
  return 0;
 }

 signal_stop = init_event(EVENT_CAPTURE_STOP, pid);
 if (!signal_stop) {
  return 0;
 }

 signal_ready = init_event(EVENT_HOOK_READY, pid);
 if (!signal_ready) {
  return 0;
 }

 signal_exit = init_event(EVENT_HOOK_EXIT, pid);
 if (!signal_exit) {
  return 0;
 }

 signal_init = init_event(EVENT_HOOK_INIT, pid);
 if (!signal_init) {
  return 0;
 }

 return 1;
}
