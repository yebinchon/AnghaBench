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
 size_t DARRAY_INVALID ; 
 int /*<<< orphan*/  FUNC0 (size_t const,struct darray*,size_t) ; 
 size_t FUNC1 (size_t const,struct darray*,void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(const size_t element_size,
				     struct darray *dst, const void *item)
{
	size_t idx = FUNC1(element_size, dst, item, 0);
	if (idx != DARRAY_INVALID)
		FUNC0(element_size, dst, idx);
}