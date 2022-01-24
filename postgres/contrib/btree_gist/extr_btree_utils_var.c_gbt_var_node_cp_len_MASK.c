#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_5__ {int eml; } ;
typedef  TYPE_1__ gbtree_vinfo ;
struct TYPE_6__ {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; } ;
typedef  TYPE_2__ GBT_VARKEY_R ;
typedef  int /*<<< orphan*/  GBT_VARKEY ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ VARHDRSZ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int32
FUNC5(const GBT_VARKEY *node, const gbtree_vinfo *tinfo)
{
	GBT_VARKEY_R r = FUNC3(node);
	int32		i = 0;
	int32		l = 0;
	int32		t1len = FUNC2(r.lower) - VARHDRSZ;
	int32		t2len = FUNC2(r.upper) - VARHDRSZ;
	int32		ml = FUNC0(t1len, t2len);
	char	   *p1 = FUNC1(r.lower);
	char	   *p2 = FUNC1(r.upper);

	if (ml == 0)
		return 0;

	while (i < ml)
	{
		if (tinfo->eml > 1 && l == 0)
		{
			if ((l = FUNC4(p1)) != FUNC4(p2))
			{
				return i;
			}
		}
		if (*p1 != *p2)
		{
			if (tinfo->eml > 1)
			{
				return (i - l + 1);
			}
			else
			{
				return i;
			}
		}

		p1++;
		p2++;
		l--;
		i++;
	}
	return ml;					/* lower == upper */
}