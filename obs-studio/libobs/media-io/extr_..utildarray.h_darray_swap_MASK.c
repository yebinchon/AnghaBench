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
struct darray {size_t const num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (size_t const,struct darray*,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (size_t const) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,size_t const) ; 

__attribute__((used)) static inline void FUNC5(const size_t element_size, struct darray *dst,
			       const size_t a, const size_t b)
{
	void *temp, *a_ptr, *b_ptr;

	FUNC0(a < dst->num);
	FUNC0(b < dst->num);

	if (a == b)
		return;

	temp = FUNC3(element_size);
	a_ptr = FUNC1(element_size, dst, a);
	b_ptr = FUNC1(element_size, dst, b);

	FUNC4(temp, a_ptr, element_size);
	FUNC4(a_ptr, b_ptr, element_size);
	FUNC4(b_ptr, temp, element_size);

	FUNC2(temp);
}