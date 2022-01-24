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
typedef  int /*<<< orphan*/  XmlSerialize ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  XmlOptionType ; 
 int /*<<< orphan*/  expr ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  typeName ; 
 int /*<<< orphan*/  xmloption ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const XmlSerialize *node)
{
	FUNC3("XMLSERIALIZE");

	FUNC0(xmloption, XmlOptionType);
	FUNC2(expr);
	FUNC2(typeName);
	FUNC1(location);
}