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
typedef  int /*<<< orphan*/  CurrentOfExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cursor_name ; 
 int /*<<< orphan*/  cursor_param ; 
 int /*<<< orphan*/  cvarno ; 

__attribute__((used)) static void
FUNC4(StringInfo str, const CurrentOfExpr *node)
{
	FUNC1("CURRENTOFEXPR");

	FUNC3(cvarno);
	FUNC2(cursor_name);
	FUNC0(cursor_param);
}