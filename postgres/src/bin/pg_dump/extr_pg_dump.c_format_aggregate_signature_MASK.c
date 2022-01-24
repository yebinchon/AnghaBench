#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* name; } ;
struct TYPE_11__ {int nargs; int /*<<< orphan*/ * argtypes; TYPE_1__ dobj; } ;
struct TYPE_13__ {TYPE_2__ aggfn; } ;
struct TYPE_12__ {char* data; } ;
typedef  TYPE_3__ PQExpBufferData ;
typedef  int /*<<< orphan*/  Archive ;
typedef  TYPE_4__ AggInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  zeroAsOpaque ; 

__attribute__((used)) static char *
FUNC7(AggInfo *agginfo, Archive *fout, bool honor_quotes)
{
	PQExpBufferData buf;
	int			j;

	FUNC6(&buf);
	if (honor_quotes)
		FUNC2(&buf, FUNC3(agginfo->aggfn.dobj.name));
	else
		FUNC2(&buf, agginfo->aggfn.dobj.name);

	if (agginfo->aggfn.nargs == 0)
		FUNC2(&buf, "(*)");
	else
	{
		FUNC1(&buf, '(');
		for (j = 0; j < agginfo->aggfn.nargs; j++)
		{
			char	   *typname;

			typname = FUNC5(fout, agginfo->aggfn.argtypes[j],
										   zeroAsOpaque);

			FUNC0(&buf, "%s%s",
							  (j > 0) ? ", " : "",
							  typname);
			FUNC4(typname);
		}
		FUNC1(&buf, ')');
	}
	return buf.data;
}