#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
struct TYPE_8__ {int /*<<< orphan*/  hdc; int /*<<< orphan*/  theme; TYPE_1__ rect; } ;
struct TYPE_7__ {scalar_t__ top; scalar_t__ bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__ ProgressDrawInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PP_CHUNKVERT ; 

__attribute__((used)) static void FUNC1 (const ProgressDrawInfo* di, int start, int end)
{
    RECT r;
    r.left = di->rect.left;
    r.right = di->rect.right;
    r.bottom = di->rect.bottom - start;
    r.top = di->rect.bottom - end;
    FUNC0 (di->theme, di->hdc, PP_CHUNKVERT, 0, &r, NULL);
}