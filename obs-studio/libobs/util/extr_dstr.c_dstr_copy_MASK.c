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
struct dstr {size_t len; int /*<<< orphan*/  array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 

void FUNC4(struct dstr *dst, const char *array)
{
	size_t len;

	if (!array || !*array) {
		FUNC1(dst);
		return;
	}

	len = FUNC3(array);
	FUNC0(dst, len + 1);
	FUNC2(dst->array, array, len + 1);
	dst->len = len;
}