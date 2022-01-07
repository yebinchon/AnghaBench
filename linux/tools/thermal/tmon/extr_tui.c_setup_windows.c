
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_cooling_dev; int nr_tz_sensor; } ;


 int DIAG_X ;
 int DIAG_Y ;
 int LOG_DEBUG ;
 int LOG_INFO ;
 int NR_LINES_TZDATA ;
 int SENSOR_WIN_HIGHT ;
 int TITLE_BAR_HIGHT ;
 int TRUE ;
 void* control_window ;
 void* cooling_device_window ;
 scalar_t__ data_panel ;
 int diag_dev_rows () ;
 scalar_t__ dialogue_panel ;
 void* dialogue_window ;
 int doupdate () ;
 int getmaxyx (int ,int,scalar_t__) ;
 scalar_t__ maxwidth ;
 scalar_t__ maxx ;
 int maxy ;
 scalar_t__ new_panel (void*) ;
 TYPE_1__ ptdata ;
 int refresh () ;
 int resizeterm (int,scalar_t__) ;
 int scrollok (void*,int ) ;
 int set_panel_userptr (scalar_t__,scalar_t__) ;
 int * status_bar_slots ;
 void* status_bar_window ;
 int stdscr ;
 int strcpy (int ,char*) ;
 void* subwin (int ,int,scalar_t__,int,int ) ;
 int syslog (int ,char*) ;
 void* thermal_data_window ;
 void* title_bar_window ;
 scalar_t__ top ;
 scalar_t__ tui_disabled ;
 void* tz_sensor_window ;
 int werase (int ) ;
 int wmove (void*,int,int) ;

void setup_windows(void)
{
 int y_begin = 1;

 if (tui_disabled)
  return;

 getmaxyx(stdscr, maxy, maxx);
 resizeterm(maxy, maxx);

 title_bar_window = subwin(stdscr, TITLE_BAR_HIGHT, maxx, 0, 0);
 y_begin += TITLE_BAR_HIGHT;

 tz_sensor_window = subwin(stdscr, SENSOR_WIN_HIGHT, maxx, y_begin, 0);
 y_begin += SENSOR_WIN_HIGHT;

 cooling_device_window = subwin(stdscr, ptdata.nr_cooling_dev + 3, maxx,
    y_begin, 0);
 y_begin += ptdata.nr_cooling_dev + 3;





 dialogue_window = subwin(stdscr, diag_dev_rows() + 5, maxx-50,
    DIAG_Y, DIAG_X);

 thermal_data_window = subwin(stdscr, ptdata.nr_tz_sensor *
    NR_LINES_TZDATA + 3, maxx, y_begin, 0);
 y_begin += ptdata.nr_tz_sensor * NR_LINES_TZDATA + 3;
 control_window = subwin(stdscr, 4, maxx, y_begin, 0);

 scrollok(cooling_device_window, TRUE);
 maxwidth = maxx - 18;
 status_bar_window = subwin(stdscr, 1, maxx, maxy-1, 0);

 strcpy(status_bar_slots[0], " Ctrl-c - Quit ");
 strcpy(status_bar_slots[1], " TAB - Tuning ");
 wmove(status_bar_window, 1, 30);





 data_panel = new_panel(cooling_device_window);
 if (!data_panel)
  syslog(LOG_DEBUG, "No data panel\n");
 else {
  if (dialogue_window) {
   dialogue_panel = new_panel(dialogue_window);
   if (!dialogue_panel)
    syslog(LOG_DEBUG, "No dialogue panel\n");
   else {

    set_panel_userptr(data_panel, dialogue_panel);
    set_panel_userptr(dialogue_panel, data_panel);
    top = data_panel;
   }
  } else
   syslog(LOG_INFO, "no dialogue win, term too small\n");
 }
 doupdate();
 werase(stdscr);
 refresh();
}
