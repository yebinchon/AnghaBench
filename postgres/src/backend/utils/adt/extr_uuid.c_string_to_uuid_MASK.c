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
struct TYPE_3__ {unsigned char* data; } ;
typedef  TYPE_1__ pg_uuid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 int UUID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC6(const char *source, pg_uuid_t *uuid)
{
	const char *src = source;
	bool		braces = false;
	int			i;

	if (src[0] == '{')
	{
		src++;
		braces = true;
	}

	for (i = 0; i < UUID_LEN; i++)
	{
		char		str_buf[3];

		if (src[0] == '\0' || src[1] == '\0')
			goto syntax_error;
		FUNC4(str_buf, src, 2);
		if (!FUNC3((unsigned char) str_buf[0]) ||
			!FUNC3((unsigned char) str_buf[1]))
			goto syntax_error;

		str_buf[2] = '\0';
		uuid->data[i] = (unsigned char) FUNC5(str_buf, NULL, 16);
		src += 2;
		if (src[0] == '-' && (i % 2) == 1 && i < UUID_LEN - 1)
			src++;
	}

	if (braces)
	{
		if (*src != '}')
			goto syntax_error;
		src++;
	}

	if (*src != '\0')
		goto syntax_error;

	return;

syntax_error:
	FUNC0(ERROR,
			(FUNC1(ERRCODE_INVALID_TEXT_REPRESENTATION),
			 FUNC2("invalid input syntax for type %s: \"%s\"",
					"uuid", source)));
}