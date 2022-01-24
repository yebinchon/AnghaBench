#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  entries; } ;
typedef  TYPE_1__ TheLexeme ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const void *a, const void *b)
{
	const TheLexeme *la = (const TheLexeme *) a;
	const TheLexeme *lb = (const TheLexeme *) b;
	int			res;

	if ((res = FUNC0(la, lb)) != 0)
		return res;

	return -FUNC1(la->entries, lb->entries);
}