
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int SIGWINCH ;
 int clear () ;
 int close_windows () ;
 int endwin () ;
 int getmaxyx (int ,int ,int ) ;
 int maxx ;
 int maxy ;
 int refresh () ;
 int setup_windows () ;
 int signal (int ,void (*) (int)) ;
 int sleep (int) ;
 int stdscr ;
 int syslog (int ,char*,int,int ,int ) ;

void resize_handler(int sig)
{

 close_windows();
 endwin();
 refresh();
 clear();
 getmaxyx(stdscr, maxy, maxx);
 setup_windows();

 sleep(1);
 syslog(LOG_DEBUG, "SIG %d, term resized to %d x %d\n",
  sig, maxy, maxx);
 signal(SIGWINCH, resize_handler);
}
