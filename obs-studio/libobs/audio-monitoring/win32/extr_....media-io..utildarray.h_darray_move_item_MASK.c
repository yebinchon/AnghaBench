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
 void* FUNC0 (size_t const,struct darray*,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t const) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,size_t const) ; 

__attribute__((used)) static inline void FUNC5(const size_t element_size,
				    struct darray *dst, const size_t from,
				    const size_t to)
{
	void *temp, *p_from, *p_to;

	if (from == to)
		return;

	temp = FUNC2(element_size);
	p_from = FUNC0(element_size, dst, from);
	p_to = FUNC0(element_size, dst, to);

	FUNC3(temp, p_from, element_size);

	if (to < from)
		FUNC4(FUNC0(element_size, dst, to + 1), p_to,
			element_size * (from - to));
	else
		FUNC4(p_from, FUNC0(element_size, dst, from + 1),
			element_size * (to - from));

	FUNC3(p_to, temp, element_size);
	FUNC1(temp);
}