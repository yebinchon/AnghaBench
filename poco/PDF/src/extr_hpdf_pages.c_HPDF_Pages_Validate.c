
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int obj_class; } ;
typedef scalar_t__ HPDF_Pages ;
typedef TYPE_1__ HPDF_Obj_Header ;
typedef int HPDF_BOOL ;


 int HPDF_FALSE ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OSUBCLASS_PAGES ;
 int HPDF_PTRACE (char*) ;
 int HPDF_TRUE ;

HPDF_BOOL
HPDF_Pages_Validate (HPDF_Pages pages)
{
    HPDF_Obj_Header *header = (HPDF_Obj_Header *)pages;

    HPDF_PTRACE((" HPDF_Pages_Validate\n"));

    if (!pages || header->obj_class != (HPDF_OCLASS_DICT |
                HPDF_OSUBCLASS_PAGES))
        return HPDF_FALSE;

    return HPDF_TRUE;
}
