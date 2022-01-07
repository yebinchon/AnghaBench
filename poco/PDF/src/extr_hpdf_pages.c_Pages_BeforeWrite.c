
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int error; int mmgr; } ;
struct TYPE_9__ {int value; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_Number ;
typedef TYPE_2__* HPDF_Dict ;
typedef int HPDF_Array ;


 int GetPageCount (TYPE_2__*) ;
 int HPDF_Dict_Add (TYPE_2__*,char*,TYPE_1__*) ;
 int HPDF_Dict_GetItem (TYPE_2__*,char*,int ) ;
 int HPDF_Error_GetCode (int ) ;
 TYPE_1__* HPDF_Number_New (int ,int ) ;
 int HPDF_OCLASS_ARRAY ;
 int HPDF_OCLASS_NUMBER ;
 int HPDF_OK ;
 int HPDF_PAGES_MISSING_KIDS_ENTRY ;
 int HPDF_PTRACE (char*) ;
 int HPDF_SetError (int ,int ,int ) ;

HPDF_STATUS
Pages_BeforeWrite (HPDF_Dict obj)
{
    HPDF_Array kids = (HPDF_Array )HPDF_Dict_GetItem (obj, "Kids",
                    HPDF_OCLASS_ARRAY);
    HPDF_Number count = (HPDF_Number)HPDF_Dict_GetItem (obj, "Count",
                    HPDF_OCLASS_NUMBER);
    HPDF_STATUS ret;

    HPDF_PTRACE((" HPDF_Pages_BeforeWrite\n"));

    if (!kids)
        return HPDF_SetError (obj->error, HPDF_PAGES_MISSING_KIDS_ENTRY, 0);

    if (count)
        count->value = GetPageCount (obj);
    else {
        count = HPDF_Number_New (obj->mmgr, GetPageCount (obj));
        if (!count)
            return HPDF_Error_GetCode (obj->error);

        if ((ret = HPDF_Dict_Add (obj, "Count", count)) != HPDF_OK)
            return ret;
    }

    return HPDF_OK;
}
