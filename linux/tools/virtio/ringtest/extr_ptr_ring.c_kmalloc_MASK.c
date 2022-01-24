#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int gfp_t ;

/* Variables and functions */
 int __GFP_ZERO ; 
 void* FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void *FUNC2(unsigned size, gfp_t gfp)
{
	void *p = FUNC0(64, size);
	if (!p)
		return p;

	if (gfp & __GFP_ZERO)
		FUNC1(p, 0, size);
	return p;
}