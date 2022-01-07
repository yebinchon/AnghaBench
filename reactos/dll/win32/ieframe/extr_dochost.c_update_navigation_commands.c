
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int loading_pos; unsigned int position; unsigned int length; } ;
struct TYPE_6__ {TYPE_1__ travellog; } ;
typedef TYPE_2__ DocHost ;


 int CSC_NAVIGATEBACK ;
 int CSC_NAVIGATEFORWARD ;
 int on_commandstate_change (TYPE_2__*,int ,int) ;

void update_navigation_commands(DocHost *dochost)
{
    unsigned pos = dochost->travellog.loading_pos == -1 ? dochost->travellog.position : dochost->travellog.loading_pos;

    on_commandstate_change(dochost, CSC_NAVIGATEBACK, pos > 0);
    on_commandstate_change(dochost, CSC_NAVIGATEFORWARD, pos < dochost->travellog.length);
}
