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
struct dstr {size_t len; scalar_t__ array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 

void FUNC2(struct dstr *dst, const struct dstr *str)
{
	size_t new_len;
	if (!str->len)
		return;

	new_len = dst->len + str->len;

	FUNC0(dst, new_len + 1);
	FUNC1(dst->array + dst->len, str->array, str->len + 1);
	dst->len = new_len;
}