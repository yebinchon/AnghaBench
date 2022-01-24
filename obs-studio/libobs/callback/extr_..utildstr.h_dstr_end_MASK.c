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
struct dstr {char* array; int len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dstr const*) ; 

__attribute__((used)) static inline char FUNC1(const struct dstr *str)
{
	if (FUNC0(str))
		return 0;

	return str->array[str->len - 1];
}