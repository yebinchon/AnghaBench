#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_22__ {int /*<<< orphan*/ * children; } ;
struct TYPE_19__ {int /*<<< orphan*/  len; int /*<<< orphan*/  val; } ;
struct TYPE_20__ {TYPE_1__ string; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_2__ val; } ;
typedef  TYPE_3__ JsonbValue ;
typedef  TYPE_4__ JsonbContainer ;
typedef  int /*<<< orphan*/  JEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int JB_FARRAY ; 
 int JB_FOBJECT ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,char*,int,TYPE_3__*) ; 
 TYPE_3__* FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ jbvString ; 
 TYPE_3__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

JsonbValue *
FUNC10(JsonbContainer *container, uint32 flags,
							JsonbValue *key)
{
	JEntry	   *children = container->children;
	int			count = FUNC4(container);

	FUNC0((flags & ~(JB_FARRAY | JB_FOBJECT)) == 0);

	/* Quick out without a palloc cycle if object/array is empty */
	if (count <= 0)
		return NULL;

	if ((flags & JB_FARRAY) && FUNC2(container))
	{
		JsonbValue *result = FUNC8(sizeof(JsonbValue));
		char	   *base_addr = (char *) (children + count);
		uint32		offset = 0;
		int			i;

		for (i = 0; i < count; i++)
		{
			FUNC6(container, i, base_addr, offset, result);

			if (key->type == result->type)
			{
				if (FUNC5(key, result))
					return result;
			}

			FUNC1(offset, children[i]);
		}

		FUNC9(result);
	}
	else if ((flags & JB_FOBJECT) && FUNC3(container))
	{
		/* Object key passed by caller must be a string */
		FUNC0(key->type == jbvString);

		return FUNC7(container, key->val.string.val,
											key->val.string.len, NULL);
	}

	/* Not found */
	return NULL;
}