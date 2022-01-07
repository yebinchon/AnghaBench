
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obj_class; } ;
struct TYPE_5__ {TYPE_1__ header; } ;
typedef TYPE_2__* HPDF_Outline ;
typedef int HPDF_BOOL ;


 int HPDF_FALSE ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OSUBCLASS_OUTLINE ;
 int HPDF_PTRACE (char*) ;
 int HPDF_TRUE ;

HPDF_BOOL
HPDF_Outline_Validate (HPDF_Outline outline)
{
    if (!outline)
        return HPDF_FALSE;

    HPDF_PTRACE((" HPDF_Outline_Validate\n"));

    if (outline->header.obj_class !=
                (HPDF_OSUBCLASS_OUTLINE | HPDF_OCLASS_DICT))
        return HPDF_FALSE;

    return HPDF_TRUE;
}
