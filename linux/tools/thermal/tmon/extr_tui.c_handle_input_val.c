
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_6__ {int t_target; } ;
struct TYPE_5__ {int nr_cooling_dev; TYPE_1__* cdi; } ;
struct TYPE_4__ {int instance; } ;
typedef int PANEL ;


 char* CDEV ;
 int MAX_CTRL_TEMP ;
 int MIN_CTRL_TEMP ;
 char* THERMAL_SYSFS ;
 int TRUE ;
 int atoi (char*) ;
 scalar_t__ dialogue_on ;
 int * dialogue_window ;
 int echo () ;
 int keypad (int *,int ) ;
 int noecho () ;
 TYPE_3__ p_param ;
 scalar_t__ panel_userptr (int *) ;
 TYPE_2__ ptdata ;
 int show_control_w () ;
 int show_data_w () ;
 int snprintf (char*,int,char*,...) ;
 int sysfs_set_ulong (char*,char*,int) ;
 int * top ;
 int top_panel (int *) ;
 int wgetnstr (int *,char*,int) ;
 int write_status_bar (int,char*) ;

__attribute__((used)) static void handle_input_val(int ch)
{
 char buf[32];
 int val;
 char path[256];
 WINDOW *w = dialogue_window;

 echo();
 keypad(w, TRUE);
 wgetnstr(w, buf, 31);
 val = atoi(buf);

 if (ch == ptdata.nr_cooling_dev) {
  snprintf(buf, 31, "Invalid Temp %d! %d-%d", val,
   MIN_CTRL_TEMP, MAX_CTRL_TEMP);
  if (val < MIN_CTRL_TEMP || val > MAX_CTRL_TEMP)
   write_status_bar(40, buf);
  else {
   p_param.t_target = val;
   snprintf(buf, 31, "Set New Target Temp %d", val);
   write_status_bar(40, buf);
  }
 } else {
  snprintf(path, 256, "%s/%s%d", THERMAL_SYSFS,
   CDEV, ptdata.cdi[ch].instance);
  sysfs_set_ulong(path, "cur_state", val);
 }
 noecho();
 dialogue_on = 0;
 show_data_w();
 show_control_w();

 top = (PANEL *)panel_userptr(top);
 top_panel(top);
}
