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
typedef  struct dstr {int /*<<< orphan*/  array; } const dstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr const*,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t const) ; 

void FUNC2(struct dstr *dst, const struct dstr *str, const size_t pos)
{
	FUNC0(dst, pos);
	if (dst != str)
		FUNC1(dst->array, str->array, pos);
}