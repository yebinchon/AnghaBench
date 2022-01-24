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
 int /*<<< orphan*/  FUNC1 (size_t const,struct darray*,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (size_t const,struct darray*,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static inline void FUNC5(const size_t element_size,
				       struct darray *dst, const size_t idx,
				       const void *array, const size_t num)
{
	size_t old_num;

	FUNC0(array != NULL);
	FUNC0(num != 0);
	FUNC0(idx < dst->num);

	old_num = dst->num;
	FUNC2(element_size, dst, dst->num + num);

	FUNC4(FUNC1(element_size, dst, idx + num),
		FUNC1(element_size, dst, idx),
		element_size * (old_num - idx));
	FUNC3(FUNC1(element_size, dst, idx), array, element_size * num);
}