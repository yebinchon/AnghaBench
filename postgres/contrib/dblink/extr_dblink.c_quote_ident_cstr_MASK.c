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
typedef  int /*<<< orphan*/  text ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  quote_ident ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC5(char *rawstr)
{
	text	   *rawstr_text;
	text	   *result_text;
	char	   *result;

	rawstr_text = FUNC3(rawstr);
	result_text = FUNC0(FUNC1(quote_ident,
													 FUNC2(rawstr_text)));
	result = FUNC4(result_text);

	return result;
}