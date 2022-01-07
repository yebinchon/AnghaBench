
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int obj_class; } ;
struct TYPE_8__ {TYPE_1__ header; } ;
typedef int HPDF_Xref ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_2__* HPDF_NameTree ;
typedef int HPDF_MMgr ;
typedef int HPDF_Array ;


 int HPDF_Array_New (int ) ;
 scalar_t__ HPDF_Dict_Add (TYPE_2__*,char*,int ) ;
 TYPE_2__* HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_NAMETREE ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_2__*) ;

HPDF_NameTree
HPDF_NameTree_New (HPDF_MMgr mmgr,
                    HPDF_Xref xref)
{
    HPDF_STATUS ret = HPDF_OK;
    HPDF_NameTree ntree;
    HPDF_Array items;

    HPDF_PTRACE((" HPDF_NameTree_New\n"));

    ntree = HPDF_Dict_New (mmgr);
    if (!ntree)
        return ((void*)0);

    if (HPDF_Xref_Add (xref, ntree) != HPDF_OK)
        return ((void*)0);

    ntree->header.obj_class |= HPDF_OSUBCLASS_NAMETREE;

    items = HPDF_Array_New (mmgr);
    if (!ntree)
        return ((void*)0);

    ret += HPDF_Dict_Add (ntree, "Names", items);
    if (ret != HPDF_OK)
        return ((void*)0);

    return ntree;
}
