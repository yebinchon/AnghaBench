
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int mmask_t ;
struct TYPE_4__ {scalar_t__ picker; } ;
struct TYPE_3__ {int color; } ;


 int BUTTON1_DOUBLE_CLICKED ;
 int BUTTON1_PRESSED ;
 int BUTTON4_PRESSED ;
 int BUTTON5_PRESSED ;
 short CTX_MAX ;
 int DPRINTF_S (int ) ;
 int FALSE ;
 int TRUE ;
 int cbreak () ;
 TYPE_2__ cfg ;
 int curs_set (int) ;
 int fprintf (int ,char*) ;
 TYPE_1__* g_ctx ;
 int getenv (char*) ;
 int init_pair (short,int ,int) ;
 int initscr () ;
 int keypad (int ,int) ;
 int mouseinterval (int ) ;
 int mousemask (int,int *) ;
 int newterm (int *,int ,int ) ;
 int noecho () ;
 int nonl () ;
 int set_escdelay (int) ;
 int settimeout () ;
 int start_color () ;
 int stderr ;
 int stdin ;
 int stdscr ;
 int use_default_colors () ;

__attribute__((used)) static bool initcurses(mmask_t *oldmask)
{
 short i;

 if (cfg.picker) {
  if (!newterm(((void*)0), stderr, stdin)) {
   fprintf(stderr, "newterm!\n");
   return FALSE;
  }
 } else if (!initscr()) {
  fprintf(stderr, "initscr!\n");
  DPRINTF_S(getenv("TERM"));
  return FALSE;
 }

 cbreak();
 noecho();
 nonl();

 keypad(stdscr, TRUE);

 mousemask(BUTTON1_PRESSED | BUTTON1_DOUBLE_CLICKED, oldmask);




 mouseinterval(0);
 curs_set(FALSE);
 start_color();
 use_default_colors();


 for (i = 0; i < CTX_MAX; ++i)
  init_pair(i + 1, g_ctx[i].color, -1);

 settimeout();
 set_escdelay(25);
 return TRUE;
}
