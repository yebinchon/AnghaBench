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
struct cipher_info {char const* name; } ;

/* Variables and functions */
 struct cipher_info* FUNC0 (int) ; 

const char *
FUNC1(int code)
{
	const struct cipher_info *i = FUNC0(code);

	if (i != NULL)
		return i->name;
	return NULL;
}