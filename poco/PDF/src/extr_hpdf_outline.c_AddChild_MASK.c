#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  error; } ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_1__* HPDF_Outline ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_OCLASS_DICT ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static HPDF_STATUS
FUNC4  (HPDF_Outline  parent,
           HPDF_Outline  item)
{
    HPDF_Outline first = (HPDF_Outline)FUNC1 (parent, "First",
                    HPDF_OCLASS_DICT);
    HPDF_Outline last = (HPDF_Outline)FUNC1 (parent, "Last",
                    HPDF_OCLASS_DICT);
    HPDF_STATUS ret = 0;

    FUNC3((" AddChild\n"));

    if (!first)
        ret += FUNC0 (parent, "First", item);

    if (last) {
        ret += FUNC0 (last, "Next", item);
        ret += FUNC0 (item, "Prev", last);
    }

    ret += FUNC0 (parent, "Last", item);
    ret += FUNC0 (item, "Parent", parent);

    if (ret != HPDF_OK)
        return FUNC2 (item->error);

    return HPDF_OK;
}