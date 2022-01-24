#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ type; scalar_t__ repl; } ;
typedef  TYPE_1__ AFFIX ;

/* Variables and functions */
 scalar_t__ FF_PREFIX ; 
 int FUNC0 (unsigned char const*,unsigned char const*) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC2(const void *s1, const void *s2)
{
	const AFFIX *a1 = (const AFFIX *) s1;
	const AFFIX *a2 = (const AFFIX *) s2;

	if (a1->type < a2->type)
		return -1;
	if (a1->type > a2->type)
		return 1;
	if (a1->type == FF_PREFIX)
		return FUNC1(a1->repl, a2->repl);
	else
		return FUNC0((const unsigned char *) a1->repl,
					   (const unsigned char *) a2->repl);
}