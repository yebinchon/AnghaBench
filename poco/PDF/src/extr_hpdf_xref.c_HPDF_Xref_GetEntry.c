
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entries; } ;
typedef int HPDF_XrefEntry ;
typedef TYPE_1__* HPDF_Xref ;
typedef int HPDF_UINT ;


 int HPDF_List_ItemAt (int ,int ) ;
 int HPDF_PTRACE (char*) ;

HPDF_XrefEntry
HPDF_Xref_GetEntry (HPDF_Xref xref,
                     HPDF_UINT index)
{
    HPDF_PTRACE((" HPDF_Xref_GetEntry\n"));

    return (HPDF_XrefEntry)HPDF_List_ItemAt(xref->entries, index);
}
