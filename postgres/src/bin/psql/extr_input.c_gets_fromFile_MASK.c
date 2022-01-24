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
typedef  int /*<<< orphan*/  line ;
struct TYPE_6__ {int len; char* data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int sigint_interrupt_enabled ; 

char *
FUNC8(FILE *source)
{
	static PQExpBuffer buffer = NULL;

	char		line[1024];

	if (buffer == NULL)			/* first time through? */
		buffer = FUNC2();
	else
		FUNC7(buffer);

	for (;;)
	{
		char	   *result;

		/* Enable SIGINT to longjmp to sigint_interrupt_jmp */
		sigint_interrupt_enabled = true;

		/* Get some data */
		result = FUNC4(line, sizeof(line), source);

		/* Disable SIGINT again */
		sigint_interrupt_enabled = false;

		/* EOF or error? */
		if (result == NULL)
		{
			if (FUNC3(source))
			{
				FUNC5("could not read from input file: %m");
				return NULL;
			}
			break;
		}

		FUNC1(buffer, line);

		if (FUNC0(buffer))
		{
			FUNC5("out of memory");
			return NULL;
		}

		/* EOL? */
		if (buffer->len > 0 && buffer->data[buffer->len - 1] == '\n')
		{
			buffer->data[buffer->len - 1] = '\0';
			return FUNC6(buffer->data);
		}
	}

	if (buffer->len > 0)		/* EOF after reading some bufferload(s) */
		return FUNC6(buffer->data);

	/* EOF, so return null */
	return NULL;
}