#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  last_cond; scalar_t__ last_match; scalar_t__ got_match; } ;
struct TYPE_8__ {unsigned int len; TYPE_3__* li; } ;
struct TYPE_9__ {TYPE_1__ c; } ;
typedef  TYPE_2__ RMagic ;

/* Variables and functions */
 int /*<<< orphan*/  COND_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t) ; 
 TYPE_3__* FUNC1 (size_t) ; 
 TYPE_3__* FUNC2 (TYPE_3__*,size_t) ; 

int FUNC3(RMagic *ms, unsigned int level) {
	if (level >= ms->c.len) {
		size_t len = (ms->c.len += 20) * sizeof (*ms->c.li);
		ms->c.li = (!ms->c.li) ? FUNC1 (len) :
		    FUNC2 (ms->c.li, len);
		if (!ms->c.li) {
			FUNC0 (ms, len);
			return -1;
		}
	}
	ms->c.li[level].got_match = 0;
	ms->c.li[level].last_match = 0;
	ms->c.li[level].last_cond = COND_NONE;
	return 0;
}