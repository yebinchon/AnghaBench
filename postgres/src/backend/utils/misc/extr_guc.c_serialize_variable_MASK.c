#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct config_string {char** variable; } ;
struct config_real {int /*<<< orphan*/ * variable; } ;
struct config_int {char** variable; } ;
struct config_generic {char* name; int vartype; char* sourcefile; int /*<<< orphan*/  scontext; int /*<<< orphan*/  source; int /*<<< orphan*/  sourceline; } ;
struct config_enum {int /*<<< orphan*/ * variable; } ;
struct config_bool {int /*<<< orphan*/ * variable; } ;
typedef  int /*<<< orphan*/  Size ;

/* Variables and functions */
#define  PGC_BOOL 132 
#define  PGC_ENUM 131 
#define  PGC_INT 130 
#define  PGC_REAL 129 
#define  PGC_STRING 128 
 int /*<<< orphan*/  REALTYPE_PRECISION ; 
 scalar_t__ FUNC0 (struct config_generic*) ; 
 char* FUNC1 (struct config_enum*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(char **destptr, Size *maxbytes,
				   struct config_generic *gconf)
{
	if (FUNC0(gconf))
		return;

	FUNC2(destptr, maxbytes, "%s", gconf->name);

	switch (gconf->vartype)
	{
		case PGC_BOOL:
			{
				struct config_bool *conf = (struct config_bool *) gconf;

				FUNC2(destptr, maxbytes,
							 (*conf->variable ? "true" : "false"));
			}
			break;

		case PGC_INT:
			{
				struct config_int *conf = (struct config_int *) gconf;

				FUNC2(destptr, maxbytes, "%d", *conf->variable);
			}
			break;

		case PGC_REAL:
			{
				struct config_real *conf = (struct config_real *) gconf;

				FUNC2(destptr, maxbytes, "%.*e",
							 REALTYPE_PRECISION, *conf->variable);
			}
			break;

		case PGC_STRING:
			{
				struct config_string *conf = (struct config_string *) gconf;

				/* NULL becomes empty string, see estimate_variable_size() */
				FUNC2(destptr, maxbytes, "%s",
							 *conf->variable ? *conf->variable : "");
			}
			break;

		case PGC_ENUM:
			{
				struct config_enum *conf = (struct config_enum *) gconf;

				FUNC2(destptr, maxbytes, "%s",
							 FUNC1(conf, *conf->variable));
			}
			break;
	}

	FUNC2(destptr, maxbytes, "%s",
				 (gconf->sourcefile ? gconf->sourcefile : ""));

	if (gconf->sourcefile && gconf->sourcefile[0])
		FUNC3(destptr, maxbytes, &gconf->sourceline,
							sizeof(gconf->sourceline));

	FUNC3(destptr, maxbytes, &gconf->source,
						sizeof(gconf->source));
	FUNC3(destptr, maxbytes, &gconf->scontext,
						sizeof(gconf->scontext));
}