#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_7__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_10__ {TYPE_2__ low; TYPE_1__ high; } ;
struct TYPE_9__ {void* y; void* x; } ;
typedef  TYPE_3__ Point ;
typedef  TYPE_4__ BOX ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(Point *center, BOX *box)
{
	center->x = FUNC0(FUNC1(box->high.x, box->low.x), 2.0);
	center->y = FUNC0(FUNC1(box->high.y, box->low.y), 2.0);
}