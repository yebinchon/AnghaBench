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
struct darray {size_t const num; size_t capacity; void* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (size_t const) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t const) ; 

__attribute__((used)) static inline void FUNC3(const size_t element_size, struct darray *dst,
				  const size_t capacity)
{
	void *ptr;
	if (capacity == 0 || capacity <= dst->num)
		return;

	ptr = FUNC1(element_size * capacity);
	if (dst->num)
		FUNC2(ptr, dst->array, element_size * dst->num);
	if (dst->array)
		FUNC0(dst->array);
	dst->array = ptr;
	dst->capacity = capacity;
}