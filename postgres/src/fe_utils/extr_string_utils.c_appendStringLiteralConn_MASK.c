#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int len; char* data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 char ESCAPE_STRING_SYNTAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,char const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char) ; 
 size_t FUNC7 (char const*) ; 

void
FUNC8(PQExpBuffer buf, const char *str, PGconn *conn)
{
	size_t		length = FUNC7(str);

	/*
	 * XXX This is a kluge to silence escape_string_warning in our utility
	 * programs.  It should go away someday.
	 */
	if (FUNC6(str, '\\') != NULL && FUNC2(conn) >= 80100)
	{
		/* ensure we are not adjacent to an identifier */
		if (buf->len > 0 && buf->data[buf->len - 1] != ' ')
			FUNC3(buf, ' ');
		FUNC3(buf, ESCAPE_STRING_SYNTAX);
		FUNC4(buf, str, FUNC0(conn), false);
		return;
	}
	/* XXX end kluge */

	if (!FUNC5(buf, 2 * length + 2))
		return;
	FUNC3(buf, '\'');
	buf->len += FUNC1(conn, buf->data + buf->len,
								   str, length, NULL);
	FUNC3(buf, '\'');
}