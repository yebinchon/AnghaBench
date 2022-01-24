#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNodeSetPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  TYPE_2__* xmlBufferPtr ;
struct TYPE_13__ {int /*<<< orphan*/  doc; } ;
struct TYPE_12__ {int /*<<< orphan*/  content; } ;
struct TYPE_11__ {int nodeNr; TYPE_3__** nodeTab; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static xmlChar *
FUNC8(xmlNodeSetPtr nodeset,
				   xmlChar *toptagname,
				   xmlChar *septagname,
				   xmlChar *plainsep)
{
	xmlBufferPtr buf;
	xmlChar    *result;
	int			i;

	buf = FUNC0();

	if ((toptagname != NULL) && (FUNC6(toptagname) > 0))
	{
		FUNC3(buf, "<");
		FUNC2(buf, toptagname);
		FUNC3(buf, ">");
	}
	if (nodeset != NULL)
	{
		for (i = 0; i < nodeset->nodeNr; i++)
		{
			if (plainsep != NULL)
			{
				FUNC2(buf,
								   FUNC7(nodeset->nodeTab[i]));

				/* If this isn't the last entry, write the plain sep. */
				if (i < (nodeset->nodeNr) - 1)
					FUNC3(buf, (char *) plainsep);
			}
			else
			{
				if ((septagname != NULL) && (FUNC6(septagname) > 0))
				{
					FUNC3(buf, "<");
					FUNC2(buf, septagname);
					FUNC3(buf, ">");
				}
				FUNC4(buf,
							nodeset->nodeTab[i]->doc,
							nodeset->nodeTab[i],
							1, 0);

				if ((septagname != NULL) && (FUNC6(septagname) > 0))
				{
					FUNC3(buf, "</");
					FUNC2(buf, septagname);
					FUNC3(buf, ">");
				}
			}
		}
	}

	if ((toptagname != NULL) && (FUNC6(toptagname) > 0))
	{
		FUNC3(buf, "</");
		FUNC2(buf, toptagname);
		FUNC3(buf, ">");
	}
	result = FUNC5(buf->content);
	FUNC1(buf);
	return result;
}