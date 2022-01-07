
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; int mmgr; } ;
typedef int HPDF_STATUS ;
typedef int HPDF_Name ;
typedef TYPE_1__* HPDF_Array ;


 int HPDF_Array_Add (TYPE_1__*,int ) ;
 int HPDF_Error_GetCode (int ) ;
 int HPDF_Name_New (int ,char const*) ;
 int HPDF_PTRACE (char*) ;

HPDF_STATUS
HPDF_Array_AddName (HPDF_Array array,
                     const char *value)
{
    HPDF_Name n = HPDF_Name_New (array->mmgr, value);

    HPDF_PTRACE((" HPDF_Array_AddName\n"));

    if (!n)
        return HPDF_Error_GetCode (array->error);
    else
        return HPDF_Array_Add (array, n);
}
