#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int nargs; int /*<<< orphan*/ * argtypes; TYPE_1__ dobj; } ;
struct TYPE_10__ {char* data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  TYPE_3__ FuncInfo ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  zeroAsOpaque ; 

__attribute__((used)) static char *
FUNC7(Archive *fout, FuncInfo *finfo, bool honor_quotes)
{
	PQExpBufferData fn;
	int			j;

	FUNC6(&fn);
	if (honor_quotes)
		FUNC0(&fn, "%s(", FUNC3(finfo->dobj.name));
	else
		FUNC0(&fn, "%s(", finfo->dobj.name);
	for (j = 0; j < finfo->nargs; j++)
	{
		char	   *typname;

		if (j > 0)
			FUNC2(&fn, ", ");

		typname = FUNC5(fout, finfo->argtypes[j],
									   zeroAsOpaque);
		FUNC2(&fn, typname);
		FUNC4(typname);
	}
	FUNC1(&fn, ')');
	return fn.data;
}