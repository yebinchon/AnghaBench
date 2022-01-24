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
struct TYPE_2__ {struct ECPGstruct_member* members; } ;
struct ECPGtype {int /*<<< orphan*/ * struct_sizeof; TYPE_1__ u; } ;
struct ECPGstruct_member {struct ECPGstruct_member* next; int /*<<< orphan*/ * type; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char const*,char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ET_WARNING ; 
 int /*<<< orphan*/  PARSE_ERROR ; 
 int FUNC1 (char*) ; 
 struct ECPGtype ecpg_no_indicator ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 struct ECPGstruct_member struct_no_indicator ; 

__attribute__((used)) static void
FUNC7(FILE *o, const char *name, const char *ind_name, char *arrsize, struct ECPGtype *type, struct ECPGtype *ind_type, const char *prefix, const char *ind_prefix)
{
	/*
	 * If offset is NULL, then this is the first recursive level. If not then
	 * we are in a struct and the offset is used as offset.
	 */
	struct ECPGstruct_member *p,
			   *ind_p = NULL;
	char	   *pbuf = (char *) FUNC3(FUNC6(name) + ((prefix == NULL) ? 0 : FUNC6(prefix)) + 3);
	char	   *ind_pbuf = (char *) FUNC3(FUNC6(ind_name) + ((ind_prefix == NULL) ? 0 : FUNC6(ind_prefix)) + 3);

	if (FUNC1(arrsize) == 1)
		FUNC5(pbuf, "%s%s.", prefix ? prefix : "", name);
	else
		FUNC5(pbuf, "%s%s->", prefix ? prefix : "", name);

	prefix = pbuf;

	if (ind_type == &ecpg_no_indicator)
		ind_p = &struct_no_indicator;
	else if (ind_type != NULL)
	{
		if (FUNC1(arrsize) == 1)
			FUNC5(ind_pbuf, "%s%s.", ind_prefix ? ind_prefix : "", ind_name);
		else
			FUNC5(ind_pbuf, "%s%s->", ind_prefix ? ind_prefix : "", ind_name);

		ind_prefix = ind_pbuf;
		ind_p = ind_type->u.members;
	}

	for (p = type->u.members; p; p = p->next)
	{
		FUNC0(o, p->name, p->type, -1,
						(ind_p != NULL) ? ind_p->name : NULL,
						(ind_p != NULL) ? ind_p->type : NULL,
						-1,
						prefix, ind_prefix, arrsize, type->struct_sizeof,
						(ind_p != NULL) ? ind_type->struct_sizeof : NULL);
		if (ind_p != NULL && ind_p != &struct_no_indicator)
		{
			ind_p = ind_p->next;
			if (ind_p == NULL && p->next != NULL)
			{
				FUNC4(PARSE_ERROR, ET_WARNING, "indicator struct \"%s\" has too few members", ind_name);
				ind_p = &struct_no_indicator;
			}
		}
	}

	if (ind_type != NULL && ind_p != NULL && ind_p != &struct_no_indicator)
	{
		FUNC4(PARSE_ERROR, ET_WARNING, "indicator struct \"%s\" has too many members", ind_name);
	}

	FUNC2(pbuf);
	FUNC2(ind_pbuf);
}