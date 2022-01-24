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
struct TYPE_4__ {int lenstem; char** stem; int nstem; int /*<<< orphan*/ * next; } ;
typedef  TYPE_1__ SplitVar ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static SplitVar *
FUNC2(SplitVar *s, int makedup)
{
	SplitVar   *v = (SplitVar *) FUNC0(sizeof(SplitVar));

	v->next = NULL;
	if (s)
	{
		int			i;

		v->lenstem = s->lenstem;
		v->stem = (char **) FUNC0(sizeof(char *) * v->lenstem);
		v->nstem = s->nstem;
		for (i = 0; i < s->nstem; i++)
			v->stem[i] = (makedup) ? FUNC1(s->stem[i]) : s->stem[i];
	}
	else
	{
		v->lenstem = 16;
		v->stem = (char **) FUNC0(sizeof(char *) * v->lenstem);
		v->nstem = 0;
	}
	return v;
}