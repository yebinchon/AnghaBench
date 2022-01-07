
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmgr; struct TYPE_4__* value; } ;
typedef TYPE_1__* HPDF_Binary ;


 int HPDF_FreeMem (int ,TYPE_1__*) ;

void
HPDF_Binary_Free (HPDF_Binary obj)
{
    if (!obj)
        return;

    if (obj->value)
        HPDF_FreeMem (obj->mmgr, obj->value);

    HPDF_FreeMem (obj->mmgr, obj);
}
