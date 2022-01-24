#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  mmgr; int /*<<< orphan*/  attr; } ;
struct TYPE_17__ {TYPE_2__* xobjects; } ;
struct TYPE_16__ {TYPE_1__* list; } ;
struct TYPE_15__ {scalar_t__ count; } ;
typedef  TYPE_2__* HPDF_XObject ;
typedef  TYPE_3__* HPDF_PageAttr ;
typedef  TYPE_4__* HPDF_Page ;
typedef  TYPE_2__* HPDF_Dict ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,char*,TYPE_2__*) ; 
 char* FUNC1 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,char*) ; 
 int HPDF_LIMIT_MAX_NAME_LEN ; 
 int /*<<< orphan*/  HPDF_OCLASS_DICT ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_2__* FUNC5 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*,char*) ; 

const char*
FUNC7  (HPDF_Page     page,
                           HPDF_XObject  xobj)
{
    HPDF_PageAttr attr = (HPDF_PageAttr )page->attr;
    const char *key;

    FUNC4((" HPDF_Page_GetXObjectName\n"));

    if (!attr->xobjects) {
        HPDF_Dict resources;
        HPDF_Dict xobjects;

        resources = FUNC5 (page, "Resources",
                        HPDF_OCLASS_DICT);
        if (!resources)
            return NULL;

        xobjects = FUNC2 (page->mmgr);
        if (!xobjects)
            return NULL;

        if (FUNC0 (resources, "XObject", xobjects) != HPDF_OK)
            return NULL;

        attr->xobjects = xobjects;
    }

    /* search xobject-object from xobject-resource */
    key = FUNC1 (attr->xobjects, xobj);
    if (!key) {
        /* if the xobject is not resisterd in xobject-resource, register
         * xobject to xobject-resource.
         */
        char xobj_name[HPDF_LIMIT_MAX_NAME_LEN + 1];
        char *ptr;
        char *end_ptr = xobj_name + HPDF_LIMIT_MAX_NAME_LEN;

        ptr = (char *)FUNC6 (xobj_name, "X", end_ptr);
        FUNC3 (ptr, attr->xobjects->list->count + 1, end_ptr);

        if (FUNC0 (attr->xobjects, xobj_name, xobj) != HPDF_OK)
            return NULL;

        key = FUNC1 (attr->xobjects, xobj);
    }

    return key;
}