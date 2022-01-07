
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sx; scalar_t__ w; } ;
typedef TYPE_1__ RConsCanvas ;


 scalar_t__ G (int,int) ;
 int W (char const*) ;
 int r_cons_break_pop () ;
 int r_cons_break_push (int *,int *) ;
 scalar_t__ r_cons_is_breaked () ;
 scalar_t__ useUtf8 ;
 char* utf8_line_vert (int) ;

__attribute__((used)) static void draw_vertical_line (RConsCanvas *c, int x, int y, int height, int dot_style) {
 int i;

 if (x + c->sx < 0) {
  return;
 }
 if (x + c->sx > c->w) {
  return;
 }
 const char *vline = useUtf8 ? utf8_line_vert (dot_style) : "|";
 r_cons_break_push (((void*)0), ((void*)0));
 for (i = y; i < y + height; i++) {
  if (r_cons_is_breaked ()) {
   break;
  }
  if (G (x, i)) {
   W (vline);
  }
 }
 r_cons_break_pop ();
}
