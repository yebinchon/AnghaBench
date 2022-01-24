#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;

/* Variables and functions */
 int INDENTSTOP ; 
 int LINELEN ; 
 int /*<<< orphan*/  MAXINDENT ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

char *
FUNC3(const char *dump)
{
#define INDENTSTOP	3
#define MAXINDENT	60
#define LINELEN		78
	char		line[LINELEN + 1];
	StringInfoData str;
	int			indentLev;
	int			indentDist;
	int			i;
	int			j;

	FUNC2(&str);
	indentLev = 0;				/* logical indent level */
	indentDist = 0;				/* physical indent distance */
	i = 0;
	for (;;)
	{
		for (j = 0; j < indentDist; j++)
			line[j] = ' ';
		for (; j < LINELEN && dump[i] != '\0'; i++, j++)
		{
			line[j] = dump[i];
			switch (line[j])
			{
				case '}':
					if (j != indentDist)
					{
						/* print data before the } */
						line[j] = '\0';
						FUNC1(&str, "%s\n", line);
					}
					/* print the } at indentDist */
					line[indentDist] = '}';
					line[indentDist + 1] = '\0';
					FUNC1(&str, "%s\n", line);
					/* outdent */
					if (indentLev > 0)
					{
						indentLev--;
						indentDist = FUNC0(indentLev * INDENTSTOP, MAXINDENT);
					}
					j = indentDist - 1;
					/* j will equal indentDist on next loop iteration */
					/* suppress whitespace just after } */
					while (dump[i + 1] == ' ')
						i++;
					break;
				case ')':
					/* force line break after ), unless another ) follows */
					if (dump[i + 1] != ')')
					{
						line[j + 1] = '\0';
						FUNC1(&str, "%s\n", line);
						j = indentDist - 1;
						while (dump[i + 1] == ' ')
							i++;
					}
					break;
				case '{':
					/* force line break before { */
					if (j != indentDist)
					{
						line[j] = '\0';
						FUNC1(&str, "%s\n", line);
					}
					/* indent */
					indentLev++;
					indentDist = FUNC0(indentLev * INDENTSTOP, MAXINDENT);
					for (j = 0; j < indentDist; j++)
						line[j] = ' ';
					line[j] = dump[i];
					break;
				case ':':
					/* force line break before : */
					if (j != indentDist)
					{
						line[j] = '\0';
						FUNC1(&str, "%s\n", line);
					}
					j = indentDist;
					line[j] = dump[i];
					break;
			}
		}
		line[j] = '\0';
		if (dump[i] == '\0')
			break;
		FUNC1(&str, "%s\n", line);
	}
	if (j > 0)
		FUNC1(&str, "%s\n", line);
	return str.data;
#undef INDENTSTOP
#undef MAXINDENT
#undef LINELEN
}