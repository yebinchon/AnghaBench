
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int color; int symbol; int dot_style; } ;
struct TYPE_12__ {TYPE_2__* context; } ;
struct TYPE_11__ {int attr; int color; } ;
struct TYPE_9__ {int graph_trufae; int graph_false; int graph_true; } ;
struct TYPE_10__ {TYPE_1__ pal; } ;
typedef TYPE_3__ RConsCanvas ;
typedef TYPE_4__ RCons ;
typedef TYPE_5__ RCanvasLineStyle ;


 int Color_RESET ;
 int G (int,int) ;






 int W (char*) ;
 TYPE_4__* r_cons_singleton () ;
 int useUtf8 ;
 char* utf8_line_horiz (int ) ;
 char* utf8_line_vert (int ) ;

__attribute__((used)) static void apply_line_style(RConsCanvas *c, int x, int y, int x2, int y2,
  RCanvasLineStyle *style, int isvert) {
 RCons *cons = r_cons_singleton ();
 switch (style->color) {
 case 128:
  c->attr = cons->context->pal.graph_trufae;
  break;
 case 129:
  c->attr = cons->context->pal.graph_true;
  break;
 case 133:
  c->attr = cons->context->pal.graph_false;
  break;
 case 132:
 default:
  c->attr = cons->context->pal.graph_trufae;
  break;
 }
 if (!c->color) {
  c->attr = Color_RESET;
 }
 switch (style->symbol) {
 case 128:
  if (G (x, y)) {
   if (isvert) {
    W ("v");
   } else {
    W (">");
   }
  }
  break;
 case 129:
  if (G (x, y)) {
   W ("t");
  }
  break;
 case 133:
  if (G (x, y)) {
   W ("f");
  }
  break;
 case 130:
  if (G (x, y)) {
   W (useUtf8 ? utf8_line_vert (style->dot_style) : "|");
  }
  break;
 case 131:
  if (G (x, y)) {
   W (useUtf8 ? utf8_line_horiz (style->dot_style) : "-");
  }
  break;
 case 132:
 default:
  break;
 }
}
