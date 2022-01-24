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
struct TYPE_3__ {int indent; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ ExplainState ;

/* Variables and functions */
 int X_CLOSE_IMMEDIATE ; 
 int X_CLOSING ; 
 int X_NOWHITESPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char const*,char const) ; 

__attribute__((used)) static void
FUNC5(const char *tagname, int flags, ExplainState *es)
{
	const char *s;
	const char *valid = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.";

	if ((flags & X_NOWHITESPACE) == 0)
		FUNC2(es->str, 2 * es->indent);
	FUNC1(es->str, '<');
	if ((flags & X_CLOSING) != 0)
		FUNC1(es->str, '/');
	for (s = tagname; *s; s++)
		FUNC0(es->str, FUNC4(valid, *s) ? *s : '-');
	if ((flags & X_CLOSE_IMMEDIATE) != 0)
		FUNC3(es->str, " /");
	FUNC1(es->str, '>');
	if ((flags & X_NOWHITESPACE) == 0)
		FUNC1(es->str, '\n');
}