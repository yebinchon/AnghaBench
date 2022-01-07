
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wifi_event_monitor_handle_event_cb ;
 int wifi_set_event_handler_cb (int ) ;

__attribute__((used)) static void eventmon_setup() {
  wifi_set_event_handler_cb(wifi_event_monitor_handle_event_cb);
}
