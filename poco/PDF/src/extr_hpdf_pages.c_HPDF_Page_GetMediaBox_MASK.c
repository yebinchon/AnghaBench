#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  top; int /*<<< orphan*/  right; int /*<<< orphan*/  bottom; int /*<<< orphan*/  left; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {int /*<<< orphan*/  error; } ;
struct TYPE_9__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__* HPDF_Real ;
typedef  TYPE_2__* HPDF_Page ;
typedef  TYPE_3__ HPDF_Box ;
typedef  scalar_t__ HPDF_Array ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_OCLASS_ARRAY ; 
 int /*<<< orphan*/  HPDF_OCLASS_REAL ; 
 int /*<<< orphan*/  HPDF_PAGE_CANNOT_FIND_OBJECT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HPDF_Box
FUNC6  (HPDF_Page   page)
{
    HPDF_Box media_box = {0, 0, 0, 0};

    FUNC2((" HPDF_Page_GetMediaBox\n"));

    if (FUNC4 (page)) {
        HPDF_Array array = FUNC3 (page, "MediaBox",
                        HPDF_OCLASS_ARRAY);

        if (array) {
            HPDF_Real r;

            r = FUNC0 (array, 0, HPDF_OCLASS_REAL);
            if (r)
                media_box.left = r->value;

            r = FUNC0 (array, 1, HPDF_OCLASS_REAL);
            if (r)
                media_box.bottom = r->value;

            r = FUNC0 (array, 2, HPDF_OCLASS_REAL);
            if (r)
                media_box.right = r->value;

            r = FUNC0 (array, 3, HPDF_OCLASS_REAL);
            if (r)
                media_box.top = r->value;

            FUNC1 (page->error);
        } else FUNC5 (page->error, HPDF_PAGE_CANNOT_FIND_OBJECT, 0);
    }

    return media_box;
}