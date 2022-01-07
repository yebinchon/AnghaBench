
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int attr; } ;
struct TYPE_4__ {int obj_class; } ;
typedef TYPE_1__ HPDF_Obj_Header ;
typedef TYPE_2__* HPDF_EncryptDict ;
typedef int HPDF_BOOL ;


 int HPDF_FALSE ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OSUBCLASS_ENCRYPT ;
 int HPDF_PTRACE (char*) ;
 int HPDF_TRUE ;

HPDF_BOOL
HPDF_EncryptDict_Validate (HPDF_EncryptDict dict)
{
    HPDF_Obj_Header *header = (HPDF_Obj_Header *)dict;

    HPDF_PTRACE((" HPDF_EncryptDict_Validate\n"));

    if (!dict || !dict->attr)
        return HPDF_FALSE;

    if (header->obj_class != (HPDF_OCLASS_DICT | HPDF_OSUBCLASS_ENCRYPT))
        return HPDF_FALSE;

    return HPDF_TRUE;
}
