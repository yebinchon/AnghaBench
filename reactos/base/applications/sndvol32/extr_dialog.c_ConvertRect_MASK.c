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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {void* bottom; void* top; void* right; void* left; } ;
typedef  TYPE_1__* LPRECT ;

/* Variables and functions */
 void* FUNC0 (void*,int /*<<< orphan*/ ,int) ; 

VOID
FUNC1(LPRECT lpRect, UINT xBaseUnit, UINT yBaseUnit)
{
    lpRect->left = FUNC0(lpRect->left, xBaseUnit, 4);
    lpRect->right = FUNC0(lpRect->right, xBaseUnit, 4);
    lpRect->top = FUNC0(lpRect->top, yBaseUnit, 8);
    lpRect->bottom = FUNC0(lpRect->bottom, yBaseUnit, 8);
}