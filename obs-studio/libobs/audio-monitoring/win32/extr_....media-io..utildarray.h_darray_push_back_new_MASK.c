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
struct darray {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 void* FUNC0 (size_t const,struct darray*) ; 
 int /*<<< orphan*/  FUNC1 (size_t const,struct darray*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static inline void *FUNC3(const size_t element_size,
					 struct darray *dst)
{
	void *last;

	FUNC1(element_size, dst, ++dst->num);

	last = FUNC0(element_size, dst);
	FUNC2(last, 0, element_size);
	return last;
}