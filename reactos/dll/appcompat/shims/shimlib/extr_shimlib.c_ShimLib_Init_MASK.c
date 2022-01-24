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
typedef  int /*<<< orphan*/  SLIST_HEADER ;
typedef  scalar_t__ PSLIST_HEADER ;
typedef  int /*<<< orphan*/  HINSTANCE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  g_ShimLib_Heap ; 
 int /*<<< orphan*/  g_ShimLib_hInstance ; 
 scalar_t__ g_UsedShims ; 

void FUNC3(HINSTANCE hInstance)
{
    g_ShimLib_hInstance = hInstance;
    g_ShimLib_Heap = FUNC0(0, 0x10000, 0);

    g_UsedShims = (PSLIST_HEADER)FUNC2(sizeof(SLIST_HEADER));
    FUNC1(g_UsedShims);
}