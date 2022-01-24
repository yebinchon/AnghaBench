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
struct digest_info {int code; scalar_t__ name; } ;

/* Variables and functions */
 int PXE_PGP_UNSUPPORTED_HASH ; 
 struct digest_info* digest_list ; 
 scalar_t__ FUNC0 (scalar_t__,char const*) ; 

int
FUNC1(const char *name)
{
	const struct digest_info *i;

	for (i = digest_list; i->name; i++)
		if (FUNC0(i->name, name) == 0)
			return i->code;
	return PXE_PGP_UNSUPPORTED_HASH;
}