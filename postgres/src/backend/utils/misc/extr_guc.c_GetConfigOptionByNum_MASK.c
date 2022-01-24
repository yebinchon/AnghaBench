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
struct config_string {char* boot_val; char* reset_val; } ;
struct config_real {int min; int max; int boot_val; int reset_val; } ;
struct config_int {int min; int max; int boot_val; int reset_val; } ;
struct config_generic {int flags; char* name; size_t group; size_t context; size_t vartype; size_t source; char* sourcefile; int sourceline; int status; int /*<<< orphan*/  long_desc; int /*<<< orphan*/  short_desc; } ;
struct config_enum {int /*<<< orphan*/  reset_val; int /*<<< orphan*/  boot_val; } ;
struct config_bool {int /*<<< orphan*/  reset_val; int /*<<< orphan*/  boot_val; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEFAULT_ROLE_READ_ALL_SETTINGS ; 
 int GUC_NO_SHOW_ALL ; 
 int GUC_PENDING_RESTART ; 
 int GUC_SUPERUSER_ONLY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char** GucContext_Names ; 
 char** GucSource_Names ; 
#define  PGC_BOOL 132 
#define  PGC_ENUM 131 
#define  PGC_INT 130 
#define  PGC_REAL 129 
#define  PGC_STRING 128 
 size_t PGC_S_FILE ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct config_generic*,int) ; 
 char* FUNC4 (struct config_enum*,char*,char*,char*) ; 
 char* FUNC5 (struct config_enum*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * config_group_names ; 
 char** config_type_names ; 
 char* FUNC6 (int) ; 
 struct config_generic** guc_variables ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int num_guc_variables ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 

void
FUNC10(int varnum, const char **values, bool *noshow)
{
	char		buffer[256];
	struct config_generic *conf;

	/* check requested variable number valid */
	FUNC0((varnum >= 0) && (varnum < num_guc_variables));

	conf = guc_variables[varnum];

	if (noshow)
	{
		if ((conf->flags & GUC_NO_SHOW_ALL) ||
			((conf->flags & GUC_SUPERUSER_ONLY) &&
			 !FUNC7(FUNC1(), DEFAULT_ROLE_READ_ALL_SETTINGS)))
			*noshow = true;
		else
			*noshow = false;
	}

	/* first get the generic attributes */

	/* name */
	values[0] = conf->name;

	/* setting: use _ShowOption in order to avoid duplicating the logic */
	values[1] = FUNC3(conf, false);

	/* unit, if any (NULL is fine) */
	values[2] = FUNC6(conf->flags);

	/* group */
	values[3] = FUNC2(config_group_names[conf->group]);

	/* short_desc */
	values[4] = FUNC2(conf->short_desc);

	/* extra_desc */
	values[5] = FUNC2(conf->long_desc);

	/* context */
	values[6] = GucContext_Names[conf->context];

	/* vartype */
	values[7] = config_type_names[conf->vartype];

	/* source */
	values[8] = GucSource_Names[conf->source];

	/* now get the type specific attributes */
	switch (conf->vartype)
	{
		case PGC_BOOL:
			{
				struct config_bool *lconf = (struct config_bool *) conf;

				/* min_val */
				values[9] = NULL;

				/* max_val */
				values[10] = NULL;

				/* enumvals */
				values[11] = NULL;

				/* boot_val */
				values[12] = FUNC8(lconf->boot_val ? "on" : "off");

				/* reset_val */
				values[13] = FUNC8(lconf->reset_val ? "on" : "off");
			}
			break;

		case PGC_INT:
			{
				struct config_int *lconf = (struct config_int *) conf;

				/* min_val */
				FUNC9(buffer, sizeof(buffer), "%d", lconf->min);
				values[9] = FUNC8(buffer);

				/* max_val */
				FUNC9(buffer, sizeof(buffer), "%d", lconf->max);
				values[10] = FUNC8(buffer);

				/* enumvals */
				values[11] = NULL;

				/* boot_val */
				FUNC9(buffer, sizeof(buffer), "%d", lconf->boot_val);
				values[12] = FUNC8(buffer);

				/* reset_val */
				FUNC9(buffer, sizeof(buffer), "%d", lconf->reset_val);
				values[13] = FUNC8(buffer);
			}
			break;

		case PGC_REAL:
			{
				struct config_real *lconf = (struct config_real *) conf;

				/* min_val */
				FUNC9(buffer, sizeof(buffer), "%g", lconf->min);
				values[9] = FUNC8(buffer);

				/* max_val */
				FUNC9(buffer, sizeof(buffer), "%g", lconf->max);
				values[10] = FUNC8(buffer);

				/* enumvals */
				values[11] = NULL;

				/* boot_val */
				FUNC9(buffer, sizeof(buffer), "%g", lconf->boot_val);
				values[12] = FUNC8(buffer);

				/* reset_val */
				FUNC9(buffer, sizeof(buffer), "%g", lconf->reset_val);
				values[13] = FUNC8(buffer);
			}
			break;

		case PGC_STRING:
			{
				struct config_string *lconf = (struct config_string *) conf;

				/* min_val */
				values[9] = NULL;

				/* max_val */
				values[10] = NULL;

				/* enumvals */
				values[11] = NULL;

				/* boot_val */
				if (lconf->boot_val == NULL)
					values[12] = NULL;
				else
					values[12] = FUNC8(lconf->boot_val);

				/* reset_val */
				if (lconf->reset_val == NULL)
					values[13] = NULL;
				else
					values[13] = FUNC8(lconf->reset_val);
			}
			break;

		case PGC_ENUM:
			{
				struct config_enum *lconf = (struct config_enum *) conf;

				/* min_val */
				values[9] = NULL;

				/* max_val */
				values[10] = NULL;

				/* enumvals */

				/*
				 * NOTE! enumvals with double quotes in them are not
				 * supported!
				 */
				values[11] = FUNC4((struct config_enum *) conf,
													 "{\"", "\"}", "\",\"");

				/* boot_val */
				values[12] = FUNC8(FUNC5(lconf,
																 lconf->boot_val));

				/* reset_val */
				values[13] = FUNC8(FUNC5(lconf,
																 lconf->reset_val));
			}
			break;

		default:
			{
				/*
				 * should never get here, but in case we do, set 'em to NULL
				 */

				/* min_val */
				values[9] = NULL;

				/* max_val */
				values[10] = NULL;

				/* enumvals */
				values[11] = NULL;

				/* boot_val */
				values[12] = NULL;

				/* reset_val */
				values[13] = NULL;
			}
			break;
	}

	/*
	 * If the setting came from a config file, set the source location. For
	 * security reasons, we don't show source file/line number for
	 * insufficiently-privileged users.
	 */
	if (conf->source == PGC_S_FILE &&
		FUNC7(FUNC1(), DEFAULT_ROLE_READ_ALL_SETTINGS))
	{
		values[14] = conf->sourcefile;
		FUNC9(buffer, sizeof(buffer), "%d", conf->sourceline);
		values[15] = FUNC8(buffer);
	}
	else
	{
		values[14] = NULL;
		values[15] = NULL;
	}

	values[16] = (conf->status & GUC_PENDING_RESTART) ? "t" : "f";
}