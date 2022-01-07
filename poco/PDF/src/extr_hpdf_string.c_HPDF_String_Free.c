
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mmgr; struct TYPE_4__* value; } ;
typedef TYPE_1__* HPDF_String ;


 int HPDF_FreeMem (int ,TYPE_1__*) ;
 int HPDF_PTRACE (char*) ;

void
HPDF_String_Free (HPDF_String obj)
{
    if (!obj)
        return;

    HPDF_PTRACE((" HPDF_String_Free\n"));

    HPDF_FreeMem (obj->mmgr, obj->value);
    HPDF_FreeMem (obj->mmgr, obj);
}
