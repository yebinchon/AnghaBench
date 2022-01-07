
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; int mmgr; } ;
typedef int HPDF_STATUS ;
typedef int HPDF_Real ;
typedef int HPDF_REAL ;
typedef TYPE_1__* HPDF_Array ;


 int HPDF_Array_Add (TYPE_1__*,int ) ;
 int HPDF_Error_GetCode (int ) ;
 int HPDF_PTRACE (char*) ;
 int HPDF_Real_New (int ,int ) ;

HPDF_STATUS
HPDF_Array_AddReal (HPDF_Array array,
                     HPDF_REAL value)
{
    HPDF_Real r = HPDF_Real_New (array->mmgr, value);

    HPDF_PTRACE((" HPDF_Array_AddReal\n"));

    if (!r)
        return HPDF_Error_GetCode (array->error);
    else
        return HPDF_Array_Add (array, r);
}
