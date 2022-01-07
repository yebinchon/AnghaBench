
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ attr; } ;
struct TYPE_4__ {int obj_class; } ;
typedef TYPE_1__ HPDF_Obj_Header ;
typedef TYPE_2__* HPDF_EncryptDict ;
typedef int * HPDF_Encrypt ;


 int HPDF_OCLASS_DICT ;
 int HPDF_OSUBCLASS_ENCRYPT ;
 int HPDF_PTRACE (char*) ;

HPDF_Encrypt
HPDF_EncryptDict_GetAttr (HPDF_EncryptDict dict)
{
    HPDF_Obj_Header *header = (HPDF_Obj_Header *)dict;

    HPDF_PTRACE((" HPDF_EncryptDict_GetAttr\n"));

    if (dict && dict->attr &&
        (header->obj_class == (HPDF_OCLASS_DICT | HPDF_OSUBCLASS_ENCRYPT)))
        return (HPDF_Encrypt)dict->attr;

    return ((void*)0);
}
