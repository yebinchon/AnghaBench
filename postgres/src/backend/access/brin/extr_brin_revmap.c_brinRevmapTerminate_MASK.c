#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ rm_metaBuf; scalar_t__ rm_currBuf; } ;
typedef  TYPE_1__ BrinRevmap ;

/* Variables and functions */
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(BrinRevmap *revmap)
{
	FUNC0(revmap->rm_metaBuf);
	if (revmap->rm_currBuf != InvalidBuffer)
		FUNC0(revmap->rm_currBuf);
	FUNC1(revmap);
}