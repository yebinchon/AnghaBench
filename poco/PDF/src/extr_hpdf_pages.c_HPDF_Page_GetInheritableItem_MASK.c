#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  HPDF_UINT16 ;
typedef  TYPE_1__* HPDF_Pages ;
typedef  TYPE_1__* HPDF_Page ;
typedef  size_t HPDF_INT ;
typedef  scalar_t__ HPDF_BOOL ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_FALSE ; 
 scalar_t__* HPDF_INHERITABLE_ENTRIES ; 
 int /*<<< orphan*/  HPDF_INVALID_PARAMETER ; 
 int /*<<< orphan*/  HPDF_OCLASS_DICT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,scalar_t__) ; 
 scalar_t__ HPDF_TRUE ; 

void*
FUNC4  (HPDF_Page          page,
                               const char   *key,
                               HPDF_UINT16        obj_class)
{
    HPDF_BOOL chk = HPDF_FALSE;
    HPDF_INT i = 0;
    void * obj;

    FUNC1((" HPDF_Page_GetInheritableItem\n"));

    /* check whether the specified key is valid */
    while (HPDF_INHERITABLE_ENTRIES[i]) {
        if (FUNC3 (key, HPDF_INHERITABLE_ENTRIES[i]) == 0) {
            chk = HPDF_TRUE;
            break;
        }
        i++;
    }

    /* the key is not inheritable */
    if (chk != HPDF_TRUE) {
        FUNC2 (page->error, HPDF_INVALID_PARAMETER, 0);
        return NULL;
    }

    obj = FUNC0 (page, key, obj_class);

    /* if resources of the object is NULL, search resources of parent
     * pages recursivly
     */
    if (!obj) {
        HPDF_Pages pages = FUNC0 (page, "Parent", HPDF_OCLASS_DICT);
        while (pages) {
            obj = FUNC0 (page, key, obj_class);

            if (obj)
                break;

            pages = FUNC0 (pages, "Parent", HPDF_OCLASS_DICT);
        }
    }

    return obj;
}