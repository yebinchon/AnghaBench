
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum action { ____Placeholder_action } action ;
 int cur ;
 int curscroll ;
 int move_cursor (int,int) ;
 int ndents ;
 int xlines ;

__attribute__((used)) static void handle_screen_move(enum action sel)
{
 int onscreen;

 switch (sel) {
 case 131:
  if (ndents)
   move_cursor((cur + 1) % ndents, 0);
  break;
 case 128:
  if (ndents)
   move_cursor((cur + ndents - 1) % ndents, 0);
  break;
 case 130:
  onscreen = xlines - 4;
  move_cursor(curscroll + (onscreen - 1), 1);
  curscroll += onscreen - 1;
  break;
 case 134:
  onscreen = xlines - 4;
  move_cursor(curscroll + (onscreen - 1), 1);
  curscroll += onscreen >> 1;
  break;
 case 129:
  onscreen = xlines - 4;
  move_cursor(curscroll, 1);
  curscroll -= onscreen - 1;
  break;
 case 133:
  onscreen = xlines - 4;
  move_cursor(curscroll, 1);
  curscroll -= onscreen >> 1;
  break;
 case 132:
  move_cursor(0, 1);
  break;
 default:
  move_cursor(ndents - 1, 1);
  break;
 }
}
