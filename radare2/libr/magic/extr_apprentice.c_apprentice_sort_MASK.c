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
struct r_magic_entry {int /*<<< orphan*/  mp; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const void *a, const void *b) {
	const struct r_magic_entry *ma = a;
	const struct r_magic_entry *mb = b;
	size_t sa = FUNC0 (ma->mp);
	size_t sb = FUNC0 (mb->mp);
	if (sa == sb) {
		return 0;
	}
	if (sa > sb) {
		return -1;
	}
	return 1;
}