#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ dmSize; scalar_t__ dmDriverExtra; } ;
typedef  scalar_t__ SIZE_T ;
typedef  scalar_t__ LPVOID ;
typedef  int /*<<< orphan*/ * HGLOBAL ;
typedef  TYPE_1__ DEVMODEW ;

/* Variables and functions */
 int /*<<< orphan*/  GMEM_MOVEABLE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static HGLOBAL FUNC7(HGLOBAL hdm, DEVMODEW *dm)
{
    SIZE_T size = FUNC4(hdm);
    LPVOID ptr;

    /* Increase / alloc the global memory block, when needed */
    if ((dm->dmSize + dm->dmDriverExtra) > size) {
        if (hdm)
            hdm = FUNC3(hdm, dm->dmSize + dm->dmDriverExtra, 0);
        else
            hdm = FUNC0(GMEM_MOVEABLE, dm->dmSize + dm->dmDriverExtra);
    }

    if (hdm) {
        ptr = FUNC2(hdm);
        if (ptr) {
            FUNC6(ptr, dm, dm->dmSize + dm->dmDriverExtra);
            FUNC5(hdm);
        }
        else
        {
            FUNC1(hdm);
            hdm = NULL;
        }
    }
    return hdm;
}