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
struct darray {size_t const num; int /*<<< orphan*/  array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t const,struct darray*,struct darray const*) ; 
 int /*<<< orphan*/  FUNC2 (size_t const,struct darray*,int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (struct darray*) ; 
 int /*<<< orphan*/  FUNC4 (struct darray*) ; 
 int /*<<< orphan*/  FUNC5 (size_t const,struct darray*,size_t const) ; 

__attribute__((used)) static inline void FUNC6(const size_t element_size, struct darray *dst1,
				struct darray *dst2, const struct darray *da,
				const size_t idx)
{
	struct darray temp;

	FUNC0(da->num >= idx);
	FUNC0(dst1 != dst2);

	FUNC4(&temp);
	FUNC1(element_size, &temp, da);

	FUNC3(dst1);
	FUNC3(dst2);

	if (da->num) {
		if (idx)
			FUNC2(element_size, dst1, temp.array,
					  temp.num);
		if (idx < temp.num - 1)
			FUNC2(element_size, dst2,
					  FUNC5(element_size, &temp, idx),
					  temp.num - idx);
	}

	FUNC3(&temp);
}