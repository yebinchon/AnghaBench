
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int style; scalar_t__ nb_items; TYPE_1__* items; } ;
struct TYPE_4__ {scalar_t__ selected; } ;
typedef scalar_t__ LRESULT ;
typedef TYPE_1__ LB_ITEMDATA ;
typedef TYPE_2__ LB_DESCR ;
typedef scalar_t__ INT ;


 int LBS_MULTIPLESEL ;
 int LBS_NOSEL ;
 scalar_t__ LB_ERR ;

__attribute__((used)) static LRESULT LISTBOX_GetSelCount( const LB_DESCR *descr )
{
    INT i, count;
    const LB_ITEMDATA *item = descr->items;

    if (!(descr->style & LBS_MULTIPLESEL) ||
        (descr->style & LBS_NOSEL))
      return LB_ERR;
    for (i = count = 0; i < descr->nb_items; i++, item++)
        if (item->selected) count++;
    return count;
}
