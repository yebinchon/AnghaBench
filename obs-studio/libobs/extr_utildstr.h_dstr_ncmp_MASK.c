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
struct dstr {int /*<<< orphan*/  array; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,size_t const) ; 

__attribute__((used)) static inline int FUNC1(const struct dstr *str1, const char *str2,
			    const size_t n)
{
	return FUNC0(str1->array, str2, n);
}