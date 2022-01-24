#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HIMAGELIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  TVSIL_NORMAL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pathBuffer ; 

void FUNC4(HWND hwndTV)
{
    HIMAGELIST himl;

    if (pathBuffer) FUNC1(FUNC0(), 0, pathBuffer);

    /* Destroy the image list associated with the tree view control */
    himl = FUNC3(hwndTV, TVSIL_NORMAL);
    if (himl) FUNC2(himl);
}