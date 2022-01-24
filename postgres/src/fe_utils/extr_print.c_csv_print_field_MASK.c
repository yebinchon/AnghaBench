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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static void
FUNC6(const char *str, FILE *fout, char sep)
{
	/*----------------
	 * Enclose and escape field contents when one of these conditions is met:
	 * - the field separator is found in the contents.
	 * - the field contains a CR or LF.
	 * - the field contains a double quote.
	 * - the field is exactly "\.".
	 * - the field separator is either "\" or ".".
	 * The last two cases prevent producing a line that the server's COPY
	 * command would interpret as an end-of-data marker.  We only really
	 * need to ensure that the complete line isn't exactly "\.", but for
	 * simplicity we apply stronger restrictions here.
	 *----------------
	 */
	if (FUNC2(str, sep) != NULL ||
		FUNC4(str, "\r\n\"") != FUNC5(str) ||
		FUNC3(str, "\\.") == 0 ||
		sep == '\\' || sep == '.')
		FUNC0(str, fout);
	else
		FUNC1(str, fout);
}