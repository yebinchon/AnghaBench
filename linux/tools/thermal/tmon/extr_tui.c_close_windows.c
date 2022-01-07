
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close_panel (int ) ;
 int close_window (scalar_t__) ;
 scalar_t__ control_window ;
 scalar_t__ cooling_device_window ;
 int data_panel ;
 int dialogue_panel ;
 scalar_t__ dialogue_window ;
 scalar_t__ status_bar_window ;
 scalar_t__ thermal_data_window ;
 scalar_t__ title_bar_window ;
 scalar_t__ tui_disabled ;
 scalar_t__ tz_sensor_window ;

void close_windows(void)
{
 if (tui_disabled)
  return;

 if (dialogue_window)
  close_panel(dialogue_panel);
 if (cooling_device_window)
  close_panel(data_panel);

 close_window(title_bar_window);
 close_window(tz_sensor_window);
 close_window(status_bar_window);
 close_window(cooling_device_window);
 close_window(control_window);
 close_window(thermal_data_window);
 close_window(dialogue_window);

}
