#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nchar; scalar_t__ issuffix; TYPE_1__* node; } ;
struct TYPE_4__ {int type; struct TYPE_4__* next; scalar_t__ data; } ;
typedef  TYPE_1__ RegisNode ;
typedef  TYPE_2__ Regis ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
#define  RSF_NONEOF 129 
#define  RSF_ONEOF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

bool
FUNC3(Regis *r, char *str)
{
	RegisNode  *ptr = r->node;
	char	   *c = str;
	int			len = 0;

	while (*c)
	{
		len++;
		c += FUNC2(c);
	}

	if (len < r->nchar)
		return 0;

	c = str;
	if (r->issuffix)
	{
		len -= r->nchar;
		while (len-- > 0)
			c += FUNC2(c);
	}


	while (ptr)
	{
		switch (ptr->type)
		{
			case RSF_ONEOF:
				if (!FUNC1((char *) ptr->data, c))
					return false;
				break;
			case RSF_NONEOF:
				if (FUNC1((char *) ptr->data, c))
					return false;
				break;
			default:
				FUNC0(ERROR, "unrecognized regis node type: %d", ptr->type);
		}
		ptr = ptr->next;
		c += FUNC2(c);
	}

	return true;
}