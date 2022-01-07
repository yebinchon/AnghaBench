
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* can; } ;
struct TYPE_5__ {scalar_t__ sy; scalar_t__ sx; } ;
typedef TYPE_2__ RPanels ;


 int __layout_default (TYPE_2__*) ;

void __panels_layout (RPanels *panels) {
 panels->can->sx = 0;
 panels->can->sy = 0;
 __layout_default (panels);
}
