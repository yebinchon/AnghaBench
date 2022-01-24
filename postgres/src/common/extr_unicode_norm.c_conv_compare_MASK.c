#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
struct TYPE_2__ {scalar_t__ codepoint; } ;
typedef  TYPE_1__ pg_unicode_decomposition ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0(const void *p1, const void *p2)
{
	uint32		v1,
				v2;

	v1 = *(const uint32 *) p1;
	v2 = ((const pg_unicode_decomposition *) p2)->codepoint;
	return (v1 > v2) ? 1 : ((v1 == v2) ? 0 : -1);
}