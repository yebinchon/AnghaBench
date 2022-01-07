
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* view; } ;
struct TYPE_4__ {scalar_t__ sy; scalar_t__ sx; } ;
typedef TYPE_2__ RPanel ;



void __reset_scroll_pos(RPanel *p) {
 p->view->sx = 0;
 p->view->sy = 0;
}
