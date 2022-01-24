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
 int /*<<< orphan*/  FUNC0 (struct dstr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct dstr *dst, const struct dstr *src)
{
	if (dst->array)
		FUNC1(dst);

	if (src->len) {
		FUNC0(dst, src->len + 1);
		FUNC2(dst->array, src->array, src->len + 1);
		dst->len = src->len;
	}
}