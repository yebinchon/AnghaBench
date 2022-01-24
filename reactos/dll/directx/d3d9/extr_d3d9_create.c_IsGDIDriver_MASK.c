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
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ COLORREF ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC2(HDC hDC)
{
    COLORREF NearestBlack = FUNC0(hDC, FUNC1(0, 0, 0));
    COLORREF NearestWhite = FUNC0(hDC, FUNC1(255, 255, 255));

    if (NearestBlack != FUNC1(0, 0, 0) || NearestWhite != FUNC1(255, 255, 255))
        return TRUE;

    return FALSE;
}