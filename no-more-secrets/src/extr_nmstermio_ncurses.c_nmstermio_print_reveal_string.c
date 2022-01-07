
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_BOLD ;
 int COLOR_PAIR (int) ;
 int addstr (char*) ;
 int attroff (int ) ;
 int attron (int ) ;
 int foregroundColor ;
 scalar_t__ has_colors () ;

void nmstermio_print_reveal_string(char *s, int colorOn) {
 (void) colorOn;
 (void) foregroundColor;


 attron(A_BOLD);
 if (has_colors())
  attron(COLOR_PAIR(1));


 addstr(s);


 if (has_colors())
  attroff(COLOR_PAIR(1));
 attroff(A_BOLD);
}
