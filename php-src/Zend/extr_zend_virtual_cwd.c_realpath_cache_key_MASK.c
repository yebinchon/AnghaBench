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
typedef  int /*<<< orphan*/  zend_ulong ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline zend_ulong FUNC1(const char *path, size_t path_len) /* {{{ */
{
	register zend_ulong h;
	const char *e = path + path_len;

	for (h = FUNC0(2166136261); path < e;) {
		h *= FUNC0(16777619);
		h ^= *path++;
	}

	return h;
}