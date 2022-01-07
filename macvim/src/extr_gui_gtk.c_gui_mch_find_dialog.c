
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int arg; } ;
typedef TYPE_1__ exarg_T ;
struct TYPE_5__ {scalar_t__ in_use; } ;


 int FALSE ;
 int find_replace_dialog_create (int ,int ) ;
 TYPE_3__ gui ;

void
gui_mch_find_dialog(exarg_T *eap)
{
    if (gui.in_use)
 find_replace_dialog_create(eap->arg, FALSE);
}
