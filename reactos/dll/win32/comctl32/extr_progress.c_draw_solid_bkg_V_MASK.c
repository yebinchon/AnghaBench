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
struct TYPE_4__ {scalar_t__ bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
struct TYPE_5__ {int /*<<< orphan*/  hbrBk; int /*<<< orphan*/  hdc; TYPE_1__ rect; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_2__ ProgressDrawInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2 (const ProgressDrawInfo* di, int start, int end)
{
    RECT r;
    FUNC1(&r, di->rect.left, di->rect.bottom - end, di->rect.right, di->rect.bottom - start);
    FUNC0 (di->hdc, &r, di->hbrBk);
}