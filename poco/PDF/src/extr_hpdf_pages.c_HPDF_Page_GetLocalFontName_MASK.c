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
struct TYPE_18__ {TYPE_1__* list; } ;
struct TYPE_17__ {int /*<<< orphan*/  mmgr; int /*<<< orphan*/  attr; } ;
struct TYPE_16__ {TYPE_4__* fonts; } ;
struct TYPE_15__ {scalar_t__ count; } ;
typedef  TYPE_2__* HPDF_PageAttr ;
typedef  TYPE_3__* HPDF_Page ;
typedef  TYPE_4__* HPDF_Font ;
typedef  TYPE_4__* HPDF_Dict ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,char*,TYPE_4__*) ; 
 char* FUNC1 (TYPE_4__*,TYPE_4__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,char*) ; 
 int HPDF_LIMIT_MAX_NAME_LEN ; 
 int /*<<< orphan*/  HPDF_OCLASS_DICT ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_4__* FUNC5 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*,char*) ; 

const char*
FUNC7  (HPDF_Page  page,
                             HPDF_Font  font)
{
    HPDF_PageAttr attr = (HPDF_PageAttr )page->attr;
    const char *key;

    FUNC4((" HPDF_Page_GetLocalFontName\n"));

    /* whether check font-resource exists.  when it does not exists,
     * create font-resource
     * 2006.07.21 Fixed a problem which may cause a memory leak.
     */
    if (!attr->fonts) {
        HPDF_Dict resources;
        HPDF_Dict fonts;

        resources = FUNC5 (page, "Resources",
                        HPDF_OCLASS_DICT);
        if (!resources)
            return NULL;

        fonts = FUNC2 (page->mmgr);
        if (!fonts)
            return NULL;

        if (FUNC0 (resources, "Font", fonts) != HPDF_OK)
            return NULL;

        attr->fonts = fonts;
    }

    /* search font-object from font-resource */
    key = FUNC1 (attr->fonts, font);
    if (!key) {
        /* if the font is not resisterd in font-resource, register font to
         * font-resource.
         */
        char fontName[HPDF_LIMIT_MAX_NAME_LEN + 1];
        char *ptr;
        char *end_ptr = fontName + HPDF_LIMIT_MAX_NAME_LEN;

        ptr = (char *)FUNC6 (fontName, "F", end_ptr);
        FUNC3 (ptr, attr->fonts->list->count + 1, end_ptr);

        if (FUNC0 (attr->fonts, fontName, font) != HPDF_OK)
            return NULL;

        key = FUNC1 (attr->fonts, font);
    }

    return key;
}