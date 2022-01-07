
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int x; int y; int w; int h; } ;
struct TYPE_5__ {int sx; int sy; int w; int h; } ;
typedef TYPE_1__ RConsCanvas ;
typedef TYPE_2__ RANode ;



__attribute__((used)) static void update_seek(RConsCanvas *can, RANode *n, int force) {
 int x, y, w, h;
 int doscroll = 0;

 if (!n) {
  return;
 }
 x = n->x + can->sx;
 y = n->y + can->sy;
 w = can->w;
 h = can->h;

 doscroll = force || y < 0 || y + 5 > h || x + 5 > w || x + n->w + 5 < 0;

 if (doscroll) {
  if (n->w > w) {
   can->sx = -n->x;
  } else {
   can->sx = -n->x - n->w / 2 + w / 2;
  }
  if (n->h > h) {
   can->sy = -n->y;
  } else {
   can->sy = -n->y - n->h / 8 + h / 4;
  }
 }
}
