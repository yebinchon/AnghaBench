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
struct fpm_array_s {int used; int /*<<< orphan*/  sz; } ;

/* Variables and functions */
 void* FUNC0 (struct fpm_array_s*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct fpm_array_s *a, unsigned int n) /* {{{ */
{
	int ret = -1;

	if (n < a->used - 1) {
		void *last = FUNC0(a, a->used - 1);
		void *to_remove = FUNC0(a, n);

		FUNC1(to_remove, last, a->sz);

		ret = n;
	}

	--a->used;

	return ret;
}