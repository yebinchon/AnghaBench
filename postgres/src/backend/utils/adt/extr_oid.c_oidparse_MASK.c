#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
#define  T_Float 129 
#define  T_Integer 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

Oid
FUNC5(Node *node)
{
	switch (FUNC2(node))
	{
		case T_Integer:
			return FUNC1(node);
		case T_Float:

			/*
			 * Values too large for int4 will be represented as Float
			 * constants by the lexer.  Accept these if they are valid OID
			 * strings.
			 */
			return FUNC3(FUNC4(node), NULL);
		default:
			FUNC0(ERROR, "unrecognized node type: %d", (int) FUNC2(node));
	}
	return InvalidOid;			/* keep compiler quiet */
}