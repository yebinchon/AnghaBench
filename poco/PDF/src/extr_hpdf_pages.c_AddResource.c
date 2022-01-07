
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int error; int mmgr; } ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_1__* HPDF_Page ;
typedef TYPE_1__* HPDF_Dict ;
typedef TYPE_1__* HPDF_Array ;


 scalar_t__ HPDF_Array_Add (TYPE_1__*,int ) ;
 TYPE_1__* HPDF_Array_New (int ) ;
 scalar_t__ HPDF_Dict_Add (TYPE_1__*,char*,TYPE_1__*) ;
 TYPE_1__* HPDF_Dict_New (int ) ;
 scalar_t__ HPDF_Error_GetCode (int ) ;
 int HPDF_Name_New (int ,char*) ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;

HPDF_STATUS
AddResource (HPDF_Page page)
{
    HPDF_STATUS ret = HPDF_OK;
    HPDF_Dict resource;
    HPDF_Array procset;

    HPDF_PTRACE((" HPDF_Page_AddResource\n"));

    resource = HPDF_Dict_New (page->mmgr);
    if (!resource)
        return HPDF_Error_GetCode (page->error);





    ret += HPDF_Dict_Add (page, "Resources", resource);

    procset = HPDF_Array_New (page->mmgr);
    if (!procset)
        return HPDF_Error_GetCode (page->error);

    if (HPDF_Dict_Add (resource, "ProcSet", procset) != HPDF_OK)
        return HPDF_Error_GetCode (resource->error);

    ret += HPDF_Array_Add (procset, HPDF_Name_New (page->mmgr, "PDF"));
    ret += HPDF_Array_Add (procset, HPDF_Name_New (page->mmgr, "Text"));
    ret += HPDF_Array_Add (procset, HPDF_Name_New (page->mmgr, "ImageB"));
    ret += HPDF_Array_Add (procset, HPDF_Name_New (page->mmgr, "ImageC"));
    ret += HPDF_Array_Add (procset, HPDF_Name_New (page->mmgr, "ImageI"));

    if (ret != HPDF_OK)
       return HPDF_Error_GetCode (procset->error);

    return HPDF_OK;
}
