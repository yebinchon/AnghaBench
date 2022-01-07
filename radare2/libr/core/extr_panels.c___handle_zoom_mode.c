
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* panels; } ;
struct TYPE_8__ {size_t curnode; int * panel; } ;
typedef TYPE_1__ RPanels ;
typedef TYPE_2__ RCore ;


 int __handle_tab_key (TYPE_2__*,int) ;
 int __maximize_panel_size (TYPE_1__*) ;
 int __restore_panel_pos (int ) ;
 int __save_panel_pos (int ) ;
 int __toggle_help (TYPE_2__*) ;
 int __toggle_zoom_mode (TYPE_2__*) ;
 int r_cons_switchbuf (int) ;

bool __handle_zoom_mode(RCore *core, const int key) {
 RPanels *panels = core->panels;
 r_cons_switchbuf (0);
 switch (key) {
 case 'Q':
 case 'q':
 case 0x0d:
  __toggle_zoom_mode (core);
  break;
 case 'c':
 case 'C':
 case ';':
 case ' ':
 case '_':
 case '/':
 case '"':
 case 'A':
 case 'r':
 case '0':
 case '1':
 case '2':
 case '3':
 case '4':
 case '5':
 case '6':
 case '7':
 case '8':
 case '9':
 case 'u':
 case 'U':
 case 'b':
 case 'd':
 case 'n':
 case 'N':
 case 'g':
 case 'h':
 case 'j':
 case 'k':
 case 'J':
 case 'K':
 case 'l':
 case '.':
 case 'R':
 case 'p':
 case 'P':
 case 's':
 case 'S':
 case 't':
 case 'T':
 case 'x':
 case 'X':
 case ':':
 case '[':
 case ']':
  return 0;
 case 9:
  __restore_panel_pos (panels->panel[panels->curnode]);
  __handle_tab_key (core, 0);
  __save_panel_pos (panels->panel[panels->curnode]);
  __maximize_panel_size (panels);
  break;
 case 'Z':
  __restore_panel_pos (panels->panel[panels->curnode]);
  __handle_tab_key (core, 1);
  __save_panel_pos (panels->panel[panels->curnode]);
  __maximize_panel_size (panels);
  break;
 case '?':
  __toggle_zoom_mode (core);
  __toggle_help (core);
  __toggle_zoom_mode (core);
  break;
 }
 return 1;
}
