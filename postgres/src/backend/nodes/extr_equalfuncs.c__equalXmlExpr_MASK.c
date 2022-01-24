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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg_names ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  named_args ; 
 int /*<<< orphan*/  op ; 
 int /*<<< orphan*/  type ; 
 int /*<<< orphan*/  typmod ; 
 int /*<<< orphan*/  xmloption ; 

__attribute__((used)) static bool
FUNC4(const XmlExpr *a, const XmlExpr *b)
{
	FUNC2(op);
	FUNC3(name);
	FUNC1(named_args);
	FUNC1(arg_names);
	FUNC1(args);
	FUNC2(xmloption);
	FUNC2(type);
	FUNC2(typmod);
	FUNC0(location);

	return true;
}