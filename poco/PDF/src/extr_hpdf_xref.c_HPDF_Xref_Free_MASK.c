#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ count; } ;
struct TYPE_8__ {int /*<<< orphan*/  mmgr; struct TYPE_8__* prev; scalar_t__ trailer; TYPE_6__* entries; scalar_t__ obj; } ;
typedef  TYPE_1__* HPDF_XrefEntry ;
typedef  TYPE_1__* HPDF_Xref ;
typedef  scalar_t__ HPDF_UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,scalar_t__) ; 

void
FUNC6  (HPDF_Xref  xref)
{
    HPDF_UINT i;
    HPDF_XrefEntry entry;
    HPDF_Xref tmp_xref;

    FUNC4((" HPDF_Xref_Free\n"));

    /* delete xref entries. where prev element is not NULL,
     * delete all xref entries recursively.
     */
    while (xref) {
        /* delete all objects belong to the xref. */

        if (xref->entries) {
            for (i = 0; i < xref->entries->count; i++) {
                entry = FUNC5 (xref, i);
                if (entry->obj)
                    FUNC3 (xref->mmgr, entry->obj);
                FUNC1 (xref->mmgr, entry);
            }

            FUNC2(xref->entries);
        }

        if (xref->trailer)
            FUNC0 (xref->trailer);

        tmp_xref = xref->prev;
        FUNC1 (xref->mmgr, xref);
        xref = tmp_xref;
    }
}