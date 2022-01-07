
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int obj_class; } ;
struct TYPE_9__ {TYPE_1__ header; } ;
typedef int HPDF_Xref ;
typedef scalar_t__ HPDF_STATUS ;
typedef int HPDF_MMgr ;
typedef TYPE_2__* HPDF_Catalog ;


 scalar_t__ HPDF_Dict_Add (TYPE_2__*,char*,int ) ;
 scalar_t__ HPDF_Dict_AddName (TYPE_2__*,char*,char*) ;
 TYPE_2__* HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_OK ;
 int HPDF_OSUBCLASS_CATALOG ;
 int HPDF_Pages_New (int ,int *,int ) ;
 scalar_t__ HPDF_Xref_Add (int ,TYPE_2__*) ;

HPDF_Catalog
HPDF_Catalog_New (HPDF_MMgr mmgr,
                   HPDF_Xref xref)
{
    HPDF_Catalog catalog;
    HPDF_STATUS ret = 0;

    catalog = HPDF_Dict_New (mmgr);
    if (!catalog)
        return ((void*)0);

    catalog->header.obj_class |= HPDF_OSUBCLASS_CATALOG;

    if (HPDF_Xref_Add (xref, catalog) != HPDF_OK)
        return ((void*)0);


    ret += HPDF_Dict_AddName (catalog, "Type", "Catalog");
    ret += HPDF_Dict_Add (catalog, "Pages", HPDF_Pages_New (mmgr, ((void*)0), xref));

    if (ret != HPDF_OK)
        return ((void*)0);

    return catalog;
}
