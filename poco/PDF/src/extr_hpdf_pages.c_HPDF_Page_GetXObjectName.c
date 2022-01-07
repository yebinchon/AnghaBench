
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int mmgr; int attr; } ;
struct TYPE_17__ {TYPE_2__* xobjects; } ;
struct TYPE_16__ {TYPE_1__* list; } ;
struct TYPE_15__ {scalar_t__ count; } ;
typedef TYPE_2__* HPDF_XObject ;
typedef TYPE_3__* HPDF_PageAttr ;
typedef TYPE_4__* HPDF_Page ;
typedef TYPE_2__* HPDF_Dict ;


 scalar_t__ HPDF_Dict_Add (TYPE_2__*,char*,TYPE_2__*) ;
 char* HPDF_Dict_GetKeyByObj (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* HPDF_Dict_New (int ) ;
 int HPDF_IToA (char*,scalar_t__,char*) ;
 int HPDF_LIMIT_MAX_NAME_LEN ;
 int HPDF_OCLASS_DICT ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 TYPE_2__* HPDF_Page_GetInheritableItem (TYPE_4__*,char*,int ) ;
 scalar_t__ HPDF_StrCpy (char*,char*,char*) ;

const char*
HPDF_Page_GetXObjectName (HPDF_Page page,
                           HPDF_XObject xobj)
{
    HPDF_PageAttr attr = (HPDF_PageAttr )page->attr;
    const char *key;

    HPDF_PTRACE((" HPDF_Page_GetXObjectName\n"));

    if (!attr->xobjects) {
        HPDF_Dict resources;
        HPDF_Dict xobjects;

        resources = HPDF_Page_GetInheritableItem (page, "Resources",
                        HPDF_OCLASS_DICT);
        if (!resources)
            return ((void*)0);

        xobjects = HPDF_Dict_New (page->mmgr);
        if (!xobjects)
            return ((void*)0);

        if (HPDF_Dict_Add (resources, "XObject", xobjects) != HPDF_OK)
            return ((void*)0);

        attr->xobjects = xobjects;
    }


    key = HPDF_Dict_GetKeyByObj (attr->xobjects, xobj);
    if (!key) {



        char xobj_name[HPDF_LIMIT_MAX_NAME_LEN + 1];
        char *ptr;
        char *end_ptr = xobj_name + HPDF_LIMIT_MAX_NAME_LEN;

        ptr = (char *)HPDF_StrCpy (xobj_name, "X", end_ptr);
        HPDF_IToA (ptr, attr->xobjects->list->count + 1, end_ptr);

        if (HPDF_Dict_Add (attr->xobjects, xobj_name, xobj) != HPDF_OK)
            return ((void*)0);

        key = HPDF_Dict_GetKeyByObj (attr->xobjects, xobj);
    }

    return key;
}
