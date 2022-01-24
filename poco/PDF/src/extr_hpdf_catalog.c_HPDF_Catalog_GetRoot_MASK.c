#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  error; } ;
struct TYPE_9__ {int obj_class; } ;
struct TYPE_10__ {TYPE_1__ header; } ;
typedef  TYPE_2__* HPDF_Pages ;
typedef  TYPE_2__* HPDF_Dict ;
typedef  TYPE_4__* HPDF_Catalog ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_4__*,char*,int) ; 
 int HPDF_OCLASS_DICT ; 
 int HPDF_OSUBCLASS_PAGES ; 
 int /*<<< orphan*/  HPDF_PAGE_CANNOT_GET_ROOT_PAGES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HPDF_Pages
FUNC2  (HPDF_Catalog  catalog)
{
    HPDF_Dict pages;

    if (!catalog)
        return NULL;

    pages = FUNC0 (catalog, "Pages", HPDF_OCLASS_DICT);
    if (!pages || pages->header.obj_class != (HPDF_OSUBCLASS_PAGES |
                HPDF_OCLASS_DICT))
        FUNC1 (catalog->error, HPDF_PAGE_CANNOT_GET_ROOT_PAGES, 0);

    return pages;
}