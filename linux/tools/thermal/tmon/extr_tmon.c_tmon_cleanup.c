
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int LOG_INFO ;
 int close_windows () ;
 int closelog () ;
 int echo () ;
 int endwin () ;
 scalar_t__ event_tid ;
 int exit (int) ;
 int fclose (scalar_t__) ;
 int fflush (int ) ;
 int free_thermal_data () ;
 int input_lock ;
 int keypad (int ,int ) ;
 int nocbreak () ;
 int pthread_cancel (scalar_t__) ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int refresh () ;
 int set_ctrl_state (int ) ;
 int stdout ;
 int stdscr ;
 int syslog (int ,char*) ;
 scalar_t__ tmon_log ;

__attribute__((used)) static void tmon_cleanup(void)
{

 syslog(LOG_INFO, "TMON exit cleanup\n");
 fflush(stdout);
 refresh();
 if (tmon_log)
  fclose(tmon_log);
 if (event_tid) {
  pthread_mutex_lock(&input_lock);
  pthread_cancel(event_tid);
  pthread_mutex_unlock(&input_lock);
  pthread_mutex_destroy(&input_lock);
 }
 closelog();

 set_ctrl_state(0);

 keypad(stdscr, FALSE);
 echo();
 nocbreak();
 close_windows();
 endwin();
 free_thermal_data();

 exit(1);
}
