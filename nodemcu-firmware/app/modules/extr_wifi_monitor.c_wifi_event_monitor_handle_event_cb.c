
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int System_Event_t ;


 int wifi_event_monitor_handle_event_cb_hook (int *) ;

__attribute__((used)) static void wifi_event_monitor_handle_event_cb(System_Event_t *evt)
{
  wifi_event_monitor_handle_event_cb_hook(evt);
}
