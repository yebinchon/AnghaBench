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
typedef  int /*<<< orphan*/  XmlExpr ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XmlExprOp ; 
 int /*<<< orphan*/  XmlOptionType ; 
 int /*<<< orphan*/  arg_names ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  named_args ; 
 int /*<<< orphan*/  op ; 
 int /*<<< orphan*/  type ; 
 int /*<<< orphan*/  typmod ; 
 int /*<<< orphan*/  xmloption ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const XmlExpr *node)
{
	FUNC4("XMLEXPR");

	FUNC0(op, XmlExprOp);
	FUNC6(name);
	FUNC3(named_args);
	FUNC3(arg_names);
	FUNC3(args);
	FUNC0(xmloption, XmlOptionType);
	FUNC5(type);
	FUNC1(typmod);
	FUNC2(location);
}