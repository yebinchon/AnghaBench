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
struct TYPE_2__ {int /*<<< orphan*/  members; struct ECPGtype* element; } ;
struct ECPGtype {int type; TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ECPGt_array 130 
#define  ECPGt_struct 129 
#define  ECPGt_union 128 
 int /*<<< orphan*/  ET_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PARSE_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ECPGtype*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

void
FUNC5(struct ECPGtype *type)
{
	if (!FUNC1(type->type))
	{
		switch (type->type)
		{
			case ECPGt_array:
				switch (type->u.element->type)
				{
					case ECPGt_array:
						FUNC2("internal error: found multidimensional array\n");
						break;
					case ECPGt_struct:
					case ECPGt_union:
						/* Array of structs. */
						FUNC0(type->u.element->u.members);
						FUNC3(type->u.element);
						break;
					default:
						if (!FUNC1(type->u.element->type))
							FUNC2("internal error: unknown datatype, please report this to <pgsql-bugs@lists.postgresql.org>");

						FUNC3(type->u.element);
				}
				break;
			case ECPGt_struct:
			case ECPGt_union:
				FUNC0(type->u.members);
				break;
			default:
				FUNC4(PARSE_ERROR, ET_ERROR, "unrecognized variable type code %d", type->type);
				break;
		}
	}
	FUNC3(type);
}