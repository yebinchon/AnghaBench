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
struct dstr {scalar_t__ len; scalar_t__ array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,scalar_t__,scalar_t__) ; 

void FUNC4(struct dstr *dst, const struct dstr *str, const size_t pos)
{
	struct dstr temp;
	FUNC2(&temp);
	FUNC3(&temp, str->array + pos, str->len - pos);
	FUNC0(dst, &temp);
	FUNC1(&temp);
}