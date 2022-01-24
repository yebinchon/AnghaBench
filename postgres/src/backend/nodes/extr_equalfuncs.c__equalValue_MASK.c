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
struct TYPE_5__ {int type; } ;
typedef  TYPE_1__ Value ;
struct TYPE_6__ {int /*<<< orphan*/  str; int /*<<< orphan*/  ival; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
#define  T_BitString 132 
#define  T_Float 131 
#define  T_Integer 130 
#define  T_Null 129 
#define  T_String 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  type ; 
 TYPE_2__ val ; 

__attribute__((used)) static bool
FUNC3(const Value *a, const Value *b)
{
	FUNC0(type);

	switch (a->type)
	{
		case T_Integer:
			FUNC0(val.ival);
			break;
		case T_Float:
		case T_String:
		case T_BitString:
			FUNC1(val.str);
			break;
		case T_Null:
			/* nothing to do */
			break;
		default:
			FUNC2(ERROR, "unrecognized node type: %d", (int) a->type);
			break;
	}

	return true;
}