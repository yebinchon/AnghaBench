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
struct config_string {char const* reset_val; } ;
struct config_real {int reset_val; } ;
struct config_int {int reset_val; } ;
struct config_generic {int flags; int vartype; } ;
struct config_enum {int /*<<< orphan*/  reset_val; } ;
struct config_bool {int /*<<< orphan*/  reset_val; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_ROLE_READ_ALL_SETTINGS ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int GUC_SUPERUSER_ONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
#define  PGC_BOOL 132 
#define  PGC_ENUM 131 
#define  PGC_INT 130 
#define  PGC_REAL 129 
#define  PGC_STRING 128 
 char const* FUNC1 (struct config_enum*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 struct config_generic* FUNC5 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

const char *
FUNC8(const char *name)
{
	struct config_generic *record;
	static char buffer[256];

	record = FUNC5(name, false, ERROR);
	if (record == NULL)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_UNDEFINED_OBJECT),
				 FUNC4("unrecognized configuration parameter \"%s\"", name)));
	if ((record->flags & GUC_SUPERUSER_ONLY) &&
		!FUNC6(FUNC0(), DEFAULT_ROLE_READ_ALL_SETTINGS))
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC4("must be superuser or a member of pg_read_all_settings to examine \"%s\"",
						name)));

	switch (record->vartype)
	{
		case PGC_BOOL:
			return ((struct config_bool *) record)->reset_val ? "on" : "off";

		case PGC_INT:
			FUNC7(buffer, sizeof(buffer), "%d",
					 ((struct config_int *) record)->reset_val);
			return buffer;

		case PGC_REAL:
			FUNC7(buffer, sizeof(buffer), "%g",
					 ((struct config_real *) record)->reset_val);
			return buffer;

		case PGC_STRING:
			return ((struct config_string *) record)->reset_val;

		case PGC_ENUM:
			return FUNC1((struct config_enum *) record,
											   ((struct config_enum *) record)->reset_val);
	}
	return NULL;
}