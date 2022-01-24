#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ltree_level ;
struct TYPE_6__ {int numlevel; } ;
typedef  TYPE_1__ ltree ;
typedef  int int32 ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 scalar_t__ LTREE_HDRSIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static ltree *
FUNC8(ltree *t, int32 startpos, int32 endpos)
{
	char	   *start = NULL,
			   *end = NULL;
	ltree_level *ptr = FUNC1(t);
	ltree	   *res;
	int			i;

	if (startpos < 0 || endpos < 0 || startpos >= t->numlevel || startpos > endpos)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC5("invalid positions")));

	if (endpos > t->numlevel)
		endpos = t->numlevel;

	start = end = (char *) ptr;
	for (i = 0; i < endpos; i++)
	{
		if (i == startpos)
			start = (char *) ptr;
		if (i == endpos - 1)
		{
			end = (char *) FUNC0(ptr);
			break;
		}
		ptr = FUNC0(ptr);
	}

	res = (ltree *) FUNC7(LTREE_HDRSIZE + (end - start));
	FUNC2(res, LTREE_HDRSIZE + (end - start));
	res->numlevel = endpos - startpos;

	FUNC6(FUNC1(res), start, end - start);

	return res;
}