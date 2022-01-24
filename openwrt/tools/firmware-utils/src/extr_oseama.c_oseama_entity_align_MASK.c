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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static ssize_t FUNC1(FILE *seama, size_t curr_offset, size_t alignment) {
	if (curr_offset & (alignment - 1)) {
		size_t length = alignment - (curr_offset % alignment);

		return FUNC0(seama, length);
	}

	return 0;
}