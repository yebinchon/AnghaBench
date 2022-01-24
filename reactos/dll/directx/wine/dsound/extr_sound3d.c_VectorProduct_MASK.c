#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int x; int y; int z; } ;
typedef  TYPE_1__ D3DVECTOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int,int,int,int,int) ; 

__attribute__((used)) static inline D3DVECTOR FUNC1 (const D3DVECTOR *a, const D3DVECTOR *b)
{
	D3DVECTOR c;
	c.x = (a->y*b->z) - (a->z*b->y);
	c.y = (a->z*b->x) - (a->x*b->z);
	c.z = (a->x*b->y) - (a->y*b->x);
	FUNC0("(%f,%f,%f) x (%f,%f,%f) = (%f,%f,%f)\n", a->x, a->y, a->z, b->x, b->y,
	      b->z, c.x, c.y, c.z);
	return c;
}