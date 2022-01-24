#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ metastring ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC1(metastring *s)
{
	if ((char *) FUNC0(s->str, "W"))
		return 1;
	else if ((char *) FUNC0(s->str, "K"))
		return 1;
	else if ((char *) FUNC0(s->str, "CZ"))
		return 1;
	else if ((char *) FUNC0(s->str, "WITZ"))
		return 1;
	else
		return 0;
}