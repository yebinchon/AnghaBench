#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hMF; int /*<<< orphan*/  mm; } ;
struct TYPE_4__ {int /*<<< orphan*/  top; int /*<<< orphan*/  left; int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__* LPMETAFILEPICT ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  CF_METAFILEPICT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(HDC hdc, const RECT *lpRect)
{
    LPMETAFILEPICT mp;
    HGLOBAL hGlobal;

    hGlobal = FUNC0(CF_METAFILEPICT);
    if (!hGlobal)
        return;

    mp = (LPMETAFILEPICT)FUNC1(hGlobal);
    if (!mp)
        return;

    FUNC4(hdc, mp->mm);
    FUNC5(hdc, lpRect->right, lpRect->bottom, NULL);
    FUNC6(hdc, lpRect->left, lpRect->top, NULL);
    FUNC3(hdc, mp->hMF);
    FUNC2(hGlobal);
}