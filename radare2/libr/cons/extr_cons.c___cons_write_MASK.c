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
 int /*<<< orphan*/  FUNC0 (char const*,unsigned int const) ; 

__attribute__((used)) static inline void FUNC1(const char *obuf, int olen) {
	const unsigned int bucket = 64 * 1024;
	unsigned int i;
	for (i = 0; (i + bucket) < olen; i += bucket) {
		FUNC0 (obuf + i, bucket);
	}
	if (i < olen) {
		FUNC0 (obuf + i, olen - i);
	}
}