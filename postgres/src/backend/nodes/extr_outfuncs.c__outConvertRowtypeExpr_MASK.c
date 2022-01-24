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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  ConvertRowtypeExpr ;

/* Variables and functions */
 int /*<<< orphan*/  CoercionForm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg ; 
 int /*<<< orphan*/  convertformat ; 
 int /*<<< orphan*/  location ; 
 int /*<<< orphan*/  resulttype ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const ConvertRowtypeExpr *node)
{
	FUNC3("CONVERTROWTYPEEXPR");

	FUNC2(arg);
	FUNC4(resulttype);
	FUNC0(convertformat, CoercionForm);
	FUNC1(location);
}