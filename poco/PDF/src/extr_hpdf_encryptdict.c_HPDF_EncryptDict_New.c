
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int obj_class; } ;
struct TYPE_8__ {scalar_t__ attr; int mmgr; int free_fn; TYPE_1__ header; } ;
typedef int HPDF_Xref ;
typedef int HPDF_MMgr ;
typedef int HPDF_Encrypt_Rec ;
typedef TYPE_2__* HPDF_EncryptDict ;
typedef scalar_t__ HPDF_Encrypt ;


 int HPDF_Dict_Free (TYPE_2__*) ;
 TYPE_2__* HPDF_Dict_New (int ) ;
 int HPDF_EncryptDict_OnFree ;
 int HPDF_Encrypt_Init (scalar_t__) ;
 scalar_t__ HPDF_GetMem (int ,int) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_ENCRYPT ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_2__*) ;

HPDF_EncryptDict
HPDF_EncryptDict_New (HPDF_MMgr mmgr,
                       HPDF_Xref xref)
{
    HPDF_Encrypt attr;
    HPDF_EncryptDict dict;

    HPDF_PTRACE((" HPDF_EncryptDict_New\n"));

    dict = HPDF_Dict_New (mmgr);
    if (!dict)
        return ((void*)0);

    dict->header.obj_class |= HPDF_OSUBCLASS_ENCRYPT;
    dict->free_fn = HPDF_EncryptDict_OnFree;

    attr = HPDF_GetMem (dict->mmgr, sizeof(HPDF_Encrypt_Rec));
    if (!attr) {
        HPDF_Dict_Free (dict);
        return ((void*)0);
    }

    dict->attr = attr;
    HPDF_Encrypt_Init (attr);

    if (HPDF_Xref_Add (xref, dict) != HPDF_OK)
        return ((void*)0);

    return dict;
}
