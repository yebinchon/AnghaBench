#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char const* name; } ;
struct TYPE_10__ {int /*<<< orphan*/ * argtypes; TYPE_1__ dobj; } ;
struct TYPE_9__ {char* data; } ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ FuncInfo ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
#define  PROARGMODE_IN 130 
#define  PROARGMODE_INOUT 129 
#define  PROARGMODE_OUT 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  zeroAsOpaque ; 

__attribute__((used)) static char *
FUNC8(Archive *fout,
							  FuncInfo *finfo, int nallargs,
							  char **allargtypes,
							  char **argmodes,
							  char **argnames)
{
	PQExpBufferData fn;
	int			j;

	FUNC6(&fn);
	FUNC0(&fn, "%s(", FUNC3(finfo->dobj.name));
	for (j = 0; j < nallargs; j++)
	{
		Oid			typid;
		char	   *typname;
		const char *argmode;
		const char *argname;

		typid = allargtypes ? FUNC2(allargtypes[j]) : finfo->argtypes[j];
		typname = FUNC5(fout, typid, zeroAsOpaque);

		if (argmodes)
		{
			switch (argmodes[j][0])
			{
				case PROARGMODE_IN:
					argmode = "";
					break;
				case PROARGMODE_OUT:
					argmode = "OUT ";
					break;
				case PROARGMODE_INOUT:
					argmode = "INOUT ";
					break;
				default:
					FUNC7("bogus value in proargmodes array");
					argmode = "";
					break;
			}
		}
		else
			argmode = "";

		argname = argnames ? argnames[j] : (char *) NULL;
		if (argname && argname[0] == '\0')
			argname = NULL;

		FUNC0(&fn, "%s%s%s%s%s",
						  (j > 0) ? ", " : "",
						  argmode,
						  argname ? FUNC3(argname) : "",
						  argname ? " " : "",
						  typname);
		FUNC4(typname);
	}
	FUNC1(&fn, ')');
	return fn.data;
}