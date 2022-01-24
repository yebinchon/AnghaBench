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
struct dropmsgstrings {char kind; int /*<<< orphan*/  drophint_msg; int /*<<< orphan*/  nota_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct dropmsgstrings* dropmsgstringarray ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void
FUNC6(const char *relname, char wrongkind, char rightkind)
{
	const struct dropmsgstrings *rentry;
	const struct dropmsgstrings *wentry;

	for (rentry = dropmsgstringarray; rentry->kind != '\0'; rentry++)
		if (rentry->kind == rightkind)
			break;
	FUNC0(rentry->kind != '\0');

	for (wentry = dropmsgstringarray; wentry->kind != '\0'; wentry++)
		if (wentry->kind == wrongkind)
			break;
	/* wrongkind could be something we don't have in our table... */

	FUNC2(ERROR,
			(FUNC3(ERRCODE_WRONG_OBJECT_TYPE),
			 FUNC5(rentry->nota_msg, relname),
			 (wentry->kind != '\0') ? FUNC4("%s", FUNC1(wentry->drophint_msg)) : 0));
}