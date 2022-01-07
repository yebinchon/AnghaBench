
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int up ;
typedef int right ;
typedef int left ;
typedef int down ;
struct TYPE_12__ {TYPE_2__* view; } ;
struct TYPE_11__ {int n_panels; } ;
struct TYPE_9__ {int x; int y; int w; int h; } ;
struct TYPE_10__ {TYPE_1__ pos; } ;
typedef TYPE_3__ RPanels ;
typedef TYPE_4__ RPanel ;


 int PANEL_NUM_LIMIT ;
 TYPE_4__* __get_panel (TYPE_3__*,int) ;
 int memset (int*,int,int) ;

void __dismantle_panel(RPanels *ps, RPanel *p) {
 RPanel *justLeftPanel = ((void*)0), *justRightPanel = ((void*)0), *justUpPanel = ((void*)0), *justDownPanel = ((void*)0);
 RPanel *tmpPanel = ((void*)0);
 bool leftUpValid = 0, leftDownValid = 0, rightUpValid = 0, rightDownValid = 0,
   upLeftValid = 0, upRightValid = 0, downLeftValid = 0, downRightValid = 0;
 int left[PANEL_NUM_LIMIT], right[PANEL_NUM_LIMIT], up[PANEL_NUM_LIMIT], down[PANEL_NUM_LIMIT];
 memset (left, -1, sizeof (left));
 memset (right, -1, sizeof (right));
 memset (up, -1, sizeof (up));
 memset (down, -1, sizeof (down));
 int i, ox, oy, ow, oh;
 ox = p->view->pos.x;
 oy = p->view->pos.y;
 ow = p->view->pos.w;
 oh = p->view->pos.h;
 for (i = 0; i < ps->n_panels; i++) {
  tmpPanel = __get_panel (ps, i);
  if (tmpPanel->view->pos.x + tmpPanel->view->pos.w - 1 == ox) {
   left[i] = 1;
   if (oy == tmpPanel->view->pos.y) {
    leftUpValid = 1;
    if (oh == tmpPanel->view->pos.h) {
     justLeftPanel = tmpPanel;
     break;
    }
   }
   if (oy + oh == tmpPanel->view->pos.y + tmpPanel->view->pos.h) {
    leftDownValid = 1;
   }
  }
  if (tmpPanel->view->pos.x == ox + ow - 1) {
   right[i] = 1;
   if (oy == tmpPanel->view->pos.y) {
    rightUpValid = 1;
    if (oh == tmpPanel->view->pos.h) {
     rightDownValid = 1;
     justRightPanel = tmpPanel;
    }
   }
   if (oy + oh == tmpPanel->view->pos.y + tmpPanel->view->pos.h) {
    rightDownValid = 1;
   }
  }
  if (tmpPanel->view->pos.y + tmpPanel->view->pos.h - 1 == oy) {
   up[i] = 1;
   if (ox == tmpPanel->view->pos.x) {
    upLeftValid = 1;
    if (ow == tmpPanel->view->pos.w) {
     upRightValid = 1;
     justUpPanel = tmpPanel;
    }
   }
   if (ox + ow == tmpPanel->view->pos.x + tmpPanel->view->pos.w) {
    upRightValid = 1;
   }
  }
  if (tmpPanel->view->pos.y == oy + oh - 1) {
   down[i] = 1;
   if (ox == tmpPanel->view->pos.x) {
    downLeftValid = 1;
    if (ow == tmpPanel->view->pos.w) {
     downRightValid = 1;
     justDownPanel = tmpPanel;
    }
   }
   if (ox + ow == tmpPanel->view->pos.x + tmpPanel->view->pos.w) {
    downRightValid = 1;
   }
  }
 }
 if (justLeftPanel) {
  justLeftPanel->view->pos.w += ox + ow - (justLeftPanel->view->pos.x + justLeftPanel->view->pos.w);
 } else if (justRightPanel) {
  justRightPanel->view->pos.w = justRightPanel->view->pos.x + justRightPanel->view->pos.w - ox;
  justRightPanel->view->pos.x = ox;
 } else if (justUpPanel) {
  justUpPanel->view->pos.h += oy + oh - (justUpPanel->view->pos.y + justUpPanel->view->pos.h);
 } else if (justDownPanel) {
  justDownPanel->view->pos.h = oh + justDownPanel->view->pos.y + justDownPanel->view->pos.h - (oy + oh);
  justDownPanel->view->pos.y = oy;
 } else if (leftUpValid && leftDownValid) {
  for (i = 0; i < ps->n_panels; i++) {
   if (left[i] != -1) {
    tmpPanel = __get_panel (ps, i);
    tmpPanel->view->pos.w += ox + ow - (tmpPanel->view->pos.x + tmpPanel->view->pos.w);
   }
  }
 } else if (rightUpValid && rightDownValid) {
  for (i = 0; i < ps->n_panels; i++) {
   if (right[i] != -1) {
    tmpPanel = __get_panel (ps, i);
    tmpPanel->view->pos.w = tmpPanel->view->pos.x + tmpPanel->view->pos.w - ox;
    tmpPanel->view->pos.x = ox;
   }
  }
 } else if (upLeftValid && upRightValid) {
  for (i = 0; i < ps->n_panels; i++) {
   if (up[i] != -1) {
    tmpPanel = __get_panel (ps, i);
    tmpPanel->view->pos.h += oy + oh - (tmpPanel->view->pos.y + tmpPanel->view->pos.h);
   }
  }
 } else if (downLeftValid && downRightValid) {
  for (i = 0; i < ps->n_panels; i++) {
   if (down[i] != -1) {
    tmpPanel = __get_panel (ps, i);
    tmpPanel->view->pos.h = oh + tmpPanel->view->pos.y + tmpPanel->view->pos.h - (oy + oh);
    tmpPanel->view->pos.y = oy;
   }
  }
 }
}
