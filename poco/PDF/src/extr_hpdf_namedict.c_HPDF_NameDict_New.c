
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int obj_class; } ;
struct TYPE_7__ {TYPE_1__ header; } ;
typedef int HPDF_Xref ;
typedef TYPE_2__* HPDF_NameDict ;
typedef int HPDF_MMgr ;


 TYPE_2__* HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_NAMEDICT ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_2__*) ;

HPDF_NameDict
HPDF_NameDict_New (HPDF_MMgr mmgr,
                    HPDF_Xref xref)
{
    HPDF_NameDict ndict;

    HPDF_PTRACE((" HPDF_NameDict_New\n"));

    ndict = HPDF_Dict_New (mmgr);
    if (!ndict)
        return ((void*)0);

    if (HPDF_Xref_Add (xref, ndict) != HPDF_OK)
        return ((void*)0);

    ndict->header.obj_class |= HPDF_OSUBCLASS_NAMEDICT;

    return ndict;
}
