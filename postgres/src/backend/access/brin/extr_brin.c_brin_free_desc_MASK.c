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
struct TYPE_5__ {int /*<<< orphan*/  bd_context; TYPE_1__* bd_tupdesc; } ;
struct TYPE_4__ {int tdrefcount; } ;
typedef  TYPE_2__ BrinDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(BrinDesc *bdesc)
{
	/* make sure the tupdesc is still valid */
	FUNC0(bdesc->bd_tupdesc->tdrefcount >= 1);
	/* no need for retail pfree */
	FUNC1(bdesc->bd_context);
}