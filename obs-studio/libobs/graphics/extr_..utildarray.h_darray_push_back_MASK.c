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
struct darray {size_t num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t const,struct darray*) ; 
 int /*<<< orphan*/  FUNC1 (size_t const,struct darray*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void const*,size_t const) ; 

__attribute__((used)) static inline size_t FUNC3(const size_t element_size,
				      struct darray *dst, const void *item)
{
	FUNC1(element_size, dst, ++dst->num);
	FUNC2(FUNC0(element_size, dst), item, element_size);

	return dst->num - 1;
}