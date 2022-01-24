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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_6__ {char* data; int len; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 

int
FUNC8(StringInfo buf)
{
	int32		ibuf;
	int			nargs;

	/* Dummy string argument */
	if (FUNC7(buf))
		return EOF;
	/* Function OID */
	if (FUNC6((char *) &ibuf, 4))
		return EOF;
	FUNC0(buf, (char *) &ibuf, 4);
	/* Number of arguments */
	if (FUNC6((char *) &ibuf, 4))
		return EOF;
	FUNC0(buf, (char *) &ibuf, 4);
	nargs = FUNC5(ibuf);
	/* For each argument ... */
	while (nargs-- > 0)
	{
		int			argsize;

		/* argsize */
		if (FUNC6((char *) &ibuf, 4))
			return EOF;
		FUNC0(buf, (char *) &ibuf, 4);
		argsize = FUNC5(ibuf);
		if (argsize < -1)
		{
			/* FATAL here since no hope of regaining message sync */
			FUNC2(FATAL,
					(FUNC3(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC4("invalid argument size %d in function call message",
							argsize)));
		}
		/* and arg contents */
		if (argsize > 0)
		{
			/* Allocate space for arg */
			FUNC1(buf, argsize);
			/* And grab it */
			if (FUNC6(buf->data + buf->len, argsize))
				return EOF;
			buf->len += argsize;
			/* Place a trailing null per StringInfo convention */
			buf->data[buf->len] = '\0';
		}
	}
	return 0;
}