
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* prev; } ;
typedef int HPDF_MMgr ;
typedef TYPE_1__* HPDF_GState ;


 int HPDF_FreeMem (int ,TYPE_1__*) ;

HPDF_GState
HPDF_GState_Free (HPDF_MMgr mmgr,
                   HPDF_GState gstate)
{
    HPDF_GState current = ((void*)0);

    if (gstate) {
      current = gstate->prev;
      HPDF_FreeMem (mmgr, gstate);
    }

    return current;
}
