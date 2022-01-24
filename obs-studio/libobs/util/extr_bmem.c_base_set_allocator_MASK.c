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
struct base_allocator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  alloc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct base_allocator*,int) ; 

void FUNC1(struct base_allocator *defs)
{
	FUNC0(&alloc, defs, sizeof(struct base_allocator));
}