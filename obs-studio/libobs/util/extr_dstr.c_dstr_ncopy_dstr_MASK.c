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
 scalar_t__* FUNC0 (scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 size_t FUNC2 (size_t const,size_t) ; 

void FUNC3(struct dstr *dst, const struct dstr *str, const size_t len)
{
	size_t newlen;

	if (dst->array)
		FUNC1(dst);

	if (!len)
		return;

	newlen = FUNC2(len, str->len);
	dst->array = FUNC0(str->array, newlen + 1);
	dst->len = newlen;
	dst->capacity = newlen + 1;

	dst->array[newlen] = 0;
}