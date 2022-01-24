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
struct darray {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct darray*) ; 
 int /*<<< orphan*/  FUNC1 (size_t const,struct darray*,struct darray*) ; 

__attribute__((used)) static inline void FUNC2(const size_t element_size, struct darray *dst,
			       struct darray *da)
{
	FUNC1(element_size, dst, da);
	FUNC0(da);
}