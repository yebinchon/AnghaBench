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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,size_t) ; 
 void* FUNC1 (size_t) ; 

__attribute__((used)) static inline void *FUNC2(void *old, size_t old_size, size_t new_size) {
	void *new = FUNC1(new_size);
	FUNC0(new, old, old_size);
	return new;
}