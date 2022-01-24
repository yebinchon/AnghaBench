#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  constbyval; int /*<<< orphan*/  constisnull; int /*<<< orphan*/  constlen; int /*<<< orphan*/  constvalue; int /*<<< orphan*/  constcollid; int /*<<< orphan*/  consttypmod; int /*<<< orphan*/  consttype; } ;
typedef  double Selectivity ;
typedef  int Pattern_Type ;
typedef  int /*<<< orphan*/  Pattern_Prefix_Status ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ Const ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  Pattern_Prefix_None ; 
 int /*<<< orphan*/  Pattern_Prefix_Partial ; 
#define  Pattern_Type_Like 132 
#define  Pattern_Type_Like_IC 131 
#define  Pattern_Type_Prefix 130 
#define  Pattern_Type_Regex 129 
#define  Pattern_Type_Regex_IC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,TYPE_1__**,double*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,TYPE_1__**,double*) ; 

__attribute__((used)) static Pattern_Prefix_Status
FUNC5(Const *patt, Pattern_Type ptype, Oid collation,
					 Const **prefix, Selectivity *rest_selec)
{
	Pattern_Prefix_Status result;

	switch (ptype)
	{
		case Pattern_Type_Like:
			result = FUNC2(patt, false, collation,
									   prefix, rest_selec);
			break;
		case Pattern_Type_Like_IC:
			result = FUNC2(patt, true, collation,
									   prefix, rest_selec);
			break;
		case Pattern_Type_Regex:
			result = FUNC4(patt, false, collation,
										prefix, rest_selec);
			break;
		case Pattern_Type_Regex_IC:
			result = FUNC4(patt, true, collation,
										prefix, rest_selec);
			break;
		case Pattern_Type_Prefix:
			/* Prefix type work is trivial.  */
			result = Pattern_Prefix_Partial;
			*rest_selec = 1.0;	/* all */
			*prefix = FUNC3(patt->consttype,
								patt->consttypmod,
								patt->constcollid,
								patt->constlen,
								FUNC0(patt->constvalue,
										  patt->constbyval,
										  patt->constlen),
								patt->constisnull,
								patt->constbyval);
			break;
		default:
			FUNC1(ERROR, "unrecognized ptype: %d", (int) ptype);
			result = Pattern_Prefix_None;	/* keep compiler quiet */
			break;
	}
	return result;
}