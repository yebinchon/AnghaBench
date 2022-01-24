#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * pens; } ;
struct TYPE_5__ {int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ MONTHCAL_INFO ;
typedef  int /*<<< orphan*/  HPEN ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_BRUSH ; 
 size_t PenRed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const MONTHCAL_INFO *infoPtr, HDC hdc, const RECT *r)
{
  HPEN old_pen = FUNC2(hdc, infoPtr->pens[PenRed]);
  HBRUSH old_brush;

  old_brush = FUNC2(hdc, FUNC0(NULL_BRUSH));
  FUNC1(hdc, r->left, r->top, r->right, r->bottom);

  FUNC2(hdc, old_brush);
  FUNC2(hdc, old_pen);
}