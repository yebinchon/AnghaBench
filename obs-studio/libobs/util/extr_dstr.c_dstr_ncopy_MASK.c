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
struct dstr {size_t len; size_t capacity; scalar_t__* array; } ;

/* Variables and functions */
 scalar_t__* FUNC0 (char const*,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 

void FUNC2(struct dstr *dst, const char *array, const size_t len)
{
	if (dst->array)
		FUNC1(dst);

	if (!len)
		return;

	dst->array = FUNC0(array, len + 1);
	dst->len = len;
	dst->capacity = len + 1;

	dst->array[len] = 0;
}