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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int MAX_TOKEN ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int,int*,int*,int,char**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*,char*,int,char**) ; 

__attribute__((used)) static List *
FUNC4(const char *filename, char **lineptr,
				  int elevel, char **err_msg)
{
	char		buf[MAX_TOKEN];
	bool		trailing_comma;
	bool		initial_quote;
	List	   *tokens = NIL;

	do
	{
		if (!FUNC2(lineptr, buf, sizeof(buf),
						&initial_quote, &trailing_comma,
						elevel, err_msg))
			break;

		/* Is this referencing a file? */
		if (!initial_quote && buf[0] == '@' && buf[1] != '\0')
			tokens = FUNC3(tokens, filename, buf + 1,
									   elevel, err_msg);
		else
			tokens = FUNC0(tokens, FUNC1(buf, initial_quote));
	} while (trailing_comma && (*err_msg == NULL));

	return tokens;
}