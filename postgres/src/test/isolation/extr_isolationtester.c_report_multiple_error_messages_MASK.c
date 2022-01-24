#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* data; } ;
struct TYPE_10__ {char* errormsg; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Step ;
typedef  TYPE_2__ PQExpBufferData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(Step *step, int nextra, Step **extrastep)
{
	PQExpBufferData buffer;
	int			n;

	if (nextra == 0)
	{
		FUNC5(step);
		return;
	}

	FUNC4(&buffer);
	FUNC1(&buffer, step->name);

	for (n = 0; n < nextra; ++n)
		FUNC0(&buffer, " %s", extrastep[n]->name);

	if (step->errormsg)
	{
		FUNC2(stdout, "error in steps %s: %s\n", buffer.data,
				step->errormsg);
		FUNC3(step->errormsg);
		step->errormsg = NULL;
	}

	for (n = 0; n < nextra; ++n)
	{
		if (extrastep[n]->errormsg == NULL)
			continue;
		FUNC2(stdout, "error in steps %s: %s\n",
				buffer.data, extrastep[n]->errormsg);
		FUNC3(extrastep[n]->errormsg);
		extrastep[n]->errormsg = NULL;
	}

	FUNC6(&buffer);
}