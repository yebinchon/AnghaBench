#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; } ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_1__* HPDF_Page ;
typedef  TYPE_1__* HPDF_Dict ;
typedef  TYPE_1__* HPDF_Array ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

HPDF_STATUS
FUNC7  (HPDF_Page  page)
{
    HPDF_STATUS ret = HPDF_OK;
    HPDF_Dict resource;
    HPDF_Array procset;

    FUNC6((" HPDF_Page_AddResource\n"));

    resource = FUNC3 (page->mmgr);
    if (!resource)
        return FUNC4 (page->error);

    /* althoth ProcSet-entry is obsolete, add it to resouce for
     * compatibility
     */

    ret += FUNC2 (page, "Resources", resource);

    procset = FUNC1 (page->mmgr);
    if (!procset)
        return FUNC4 (page->error);

    if (FUNC2 (resource, "ProcSet", procset) != HPDF_OK)
        return FUNC4 (resource->error);

    ret += FUNC0 (procset, FUNC5 (page->mmgr, "PDF"));
    ret += FUNC0 (procset, FUNC5 (page->mmgr, "Text"));
    ret += FUNC0 (procset, FUNC5 (page->mmgr, "ImageB"));
    ret += FUNC0 (procset, FUNC5 (page->mmgr, "ImageC"));
    ret += FUNC0 (procset, FUNC5 (page->mmgr, "ImageI"));

    if (ret != HPDF_OK)
       return FUNC4 (procset->error);

    return HPDF_OK;
}