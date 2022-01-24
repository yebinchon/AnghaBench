#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int booltesttype; int /*<<< orphan*/ * arg; int /*<<< orphan*/  location; } ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Expr ;
typedef  TYPE_1__ BooleanTest ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
#define  IS_FALSE 133 
#define  IS_NOT_FALSE 132 
#define  IS_NOT_TRUE 131 
#define  IS_NOT_UNKNOWN 130 
#define  IS_TRUE 129 
#define  IS_UNKNOWN 128 
 int /*<<< orphan*/  PREC_GROUP_POSTFIX_IS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ operator_precedence_warning ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Node *
FUNC4(ParseState *pstate, BooleanTest *b)
{
	const char *clausename;

	if (operator_precedence_warning)
		FUNC2(pstate, PREC_GROUP_POSTFIX_IS, "IS",
								 (Node *) b->arg, NULL,
								 b->location);

	switch (b->booltesttype)
	{
		case IS_TRUE:
			clausename = "IS TRUE";
			break;
		case IS_NOT_TRUE:
			clausename = "IS NOT TRUE";
			break;
		case IS_FALSE:
			clausename = "IS FALSE";
			break;
		case IS_NOT_FALSE:
			clausename = "IS NOT FALSE";
			break;
		case IS_UNKNOWN:
			clausename = "IS UNKNOWN";
			break;
		case IS_NOT_UNKNOWN:
			clausename = "IS NOT UNKNOWN";
			break;
		default:
			FUNC1(ERROR, "unrecognized booltesttype: %d",
				 (int) b->booltesttype);
			clausename = NULL;	/* keep compiler quiet */
	}

	b->arg = (Expr *) FUNC3(pstate, (Node *) b->arg);

	b->arg = (Expr *) FUNC0(pstate,
										(Node *) b->arg,
										clausename);

	return (Node *) b;
}