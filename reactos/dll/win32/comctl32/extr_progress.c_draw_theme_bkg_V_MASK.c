#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct TYPE_9__ {scalar_t__ bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
struct TYPE_11__ {int /*<<< orphan*/  hdc; int /*<<< orphan*/  theme; TYPE_2__ bgRect; TYPE_1__ rect; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__ ProgressDrawInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PP_BARVERT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3 (const ProgressDrawInfo* di, int start, int end)
{
    RECT bgrect, r;

    FUNC2(&r, di->rect.left, di->rect.bottom - end, di->rect.right, di->rect.bottom - start);
    bgrect = di->bgRect;
    FUNC1(&bgrect, -bgrect.left, -bgrect.top);

    FUNC0 (di->theme, di->hdc, PP_BARVERT, 0, &bgrect, &r);
}