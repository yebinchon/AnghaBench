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
struct TYPE_11__ {int /*<<< orphan*/  value; int /*<<< orphan*/  ptype; scalar_t__ isnull; } ;
struct TYPE_10__ {scalar_t__ numParams; TYPE_3__* params; int /*<<< orphan*/ * paramFetch; } ;
struct TYPE_9__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__* ParamListInfo ;
typedef  TYPE_3__ ParamExternData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MessageContext ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int
FUNC12(ParamListInfo params)
{
	/* We mustn't call user-defined I/O functions when in an aborted xact */
	if (params && params->numParams > 0 && !FUNC1())
	{
		StringInfoData param_str;
		MemoryContext oldcontext;

		/* This code doesn't support dynamic param lists */
		FUNC0(params->paramFetch == NULL);

		/* Make sure any trash is generated in MessageContext */
		oldcontext = FUNC2(MessageContext);

		FUNC10(&param_str);

		for (int paramno = 0; paramno < params->numParams; paramno++)
		{
			ParamExternData *prm = &params->params[paramno];
			Oid			typoutput;
			bool		typisvarlena;
			char	   *pstring;
			char	   *p;

			FUNC5(&param_str, "%s$%d = ",
							 paramno > 0 ? ", " : "",
							 paramno + 1);

			if (prm->isnull || !FUNC3(prm->ptype))
			{
				FUNC7(&param_str, "NULL");
				continue;
			}

			FUNC9(prm->ptype, &typoutput, &typisvarlena);

			pstring = FUNC4(typoutput, prm->value);

			FUNC6(&param_str, '\'');
			for (p = pstring; *p; p++)
			{
				if (*p == '\'') /* double single quotes */
					FUNC6(&param_str, *p);
				FUNC6(&param_str, *p);
			}
			FUNC6(&param_str, '\'');

			FUNC11(pstring);
		}

		FUNC8("parameters: %s", param_str.data);

		FUNC11(param_str.data);

		FUNC2(oldcontext);
	}

	return 0;
}