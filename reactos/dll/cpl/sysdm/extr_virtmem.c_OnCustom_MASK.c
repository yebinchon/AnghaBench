#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  hSelf; } ;
typedef  TYPE_1__* PVIRTMEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_INITIALSIZE ; 
 int /*<<< orphan*/  IDC_MAXSIZE ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static VOID
FUNC2(PVIRTMEM pVirtMem)
{
    /* Enable the page file custom size boxes */
    FUNC0(FUNC1(pVirtMem->hSelf, IDC_INITIALSIZE), TRUE);
    FUNC0(FUNC1(pVirtMem->hSelf, IDC_MAXSIZE), TRUE);
}