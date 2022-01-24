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
typedef  int /*<<< orphan*/  WithCheckOption ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  WCOKind ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cascaded ; 
 int /*<<< orphan*/  kind ; 
 int /*<<< orphan*/  polname ; 
 int /*<<< orphan*/  qual ; 
 int /*<<< orphan*/  relname ; 

__attribute__((used)) static void
FUNC5(StringInfo str, const WithCheckOption *node)
{
	FUNC3("WITHCHECKOPTION");

	FUNC1(kind, WCOKind);
	FUNC4(relname);
	FUNC4(polname);
	FUNC2(qual);
	FUNC0(cascaded);
}