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
typedef  size_t uint32_t ;

/* Variables and functions */
 size_t DER_TAG_LONG ; 
 int /*<<< orphan*/ * der__tag ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static const char *
FUNC2(char *buf, size_t len, uint32_t tag)
{
	if (tag < DER_TAG_LONG)
		FUNC1(buf, der__tag[tag], len);
	else
		FUNC0(buf, len, "%#x", tag);
	return buf;
}