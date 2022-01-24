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
struct fpm_array_s {unsigned int sz; unsigned int allocated; scalar_t__ used; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct fpm_array_s* FUNC2 (int) ; 

__attribute__((used)) static inline struct fpm_array_s *FUNC3(struct fpm_array_s *a, unsigned int sz, unsigned int initial_num) /* {{{ */
{
	void *allocated = 0;

	if (!a) {
		a = FUNC2(sizeof(struct fpm_array_s));

		if (!a) {
			return 0;
		}

		allocated = a;
	}

	a->sz = sz;

	a->data = FUNC0(sz, initial_num);

	if (!a->data) {
		FUNC1(allocated);
		return 0;
	}

	a->allocated = initial_num;
	a->used = 0;

	return a;
}