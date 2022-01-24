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
typedef  int /*<<< orphan*/  library_version ;
struct TYPE_11__ {int version; scalar_t__ funcmaxargs; scalar_t__ indexmaxkeys; scalar_t__ namedatalen; scalar_t__ float4byval; scalar_t__ float8byval; } ;
struct TYPE_10__ {int version; scalar_t__ funcmaxargs; scalar_t__ indexmaxkeys; scalar_t__ namedatalen; scalar_t__ float4byval; scalar_t__ float8byval; } ;
struct TYPE_9__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ Pg_magic_struct ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_3__ magic_data ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int,...) ; 

__attribute__((used)) static void
FUNC10(const char *libname,
						  const Pg_magic_struct *module_magic_data)
{
	StringInfoData details;

	/*
	 * If the version doesn't match, just report that, because the rest of the
	 * block might not even have the fields we expect.
	 */
	if (magic_data.version != module_magic_data->version)
	{
		char		library_version[32];

		if (module_magic_data->version >= 1000)
			FUNC9(library_version, sizeof(library_version), "%d",
					 module_magic_data->version / 100);
		else
			FUNC9(library_version, sizeof(library_version), "%d.%d",
					 module_magic_data->version / 100,
					 module_magic_data->version % 100);
		FUNC4(ERROR,
				(FUNC7("incompatible library \"%s\": version mismatch",
						libname),
				 FUNC5("Server is version %d, library is version %s.",
						   magic_data.version / 100, library_version)));
	}

	/*
	 * Otherwise, spell out which fields don't agree.
	 *
	 * XXX this code has to be adjusted any time the set of fields in a magic
	 * block change!
	 */
	FUNC8(&details);

	if (module_magic_data->funcmaxargs != magic_data.funcmaxargs)
	{
		if (details.len)
			FUNC2(&details, '\n');
		FUNC1(&details,
						 FUNC0("Server has FUNC_MAX_ARGS = %d, library has %d."),
						 magic_data.funcmaxargs,
						 module_magic_data->funcmaxargs);
	}
	if (module_magic_data->indexmaxkeys != magic_data.indexmaxkeys)
	{
		if (details.len)
			FUNC2(&details, '\n');
		FUNC1(&details,
						 FUNC0("Server has INDEX_MAX_KEYS = %d, library has %d."),
						 magic_data.indexmaxkeys,
						 module_magic_data->indexmaxkeys);
	}
	if (module_magic_data->namedatalen != magic_data.namedatalen)
	{
		if (details.len)
			FUNC2(&details, '\n');
		FUNC1(&details,
						 FUNC0("Server has NAMEDATALEN = %d, library has %d."),
						 magic_data.namedatalen,
						 module_magic_data->namedatalen);
	}
	if (module_magic_data->float4byval != magic_data.float4byval)
	{
		if (details.len)
			FUNC2(&details, '\n');
		FUNC1(&details,
						 FUNC0("Server has FLOAT4PASSBYVAL = %s, library has %s."),
						 magic_data.float4byval ? "true" : "false",
						 module_magic_data->float4byval ? "true" : "false");
	}
	if (module_magic_data->float8byval != magic_data.float8byval)
	{
		if (details.len)
			FUNC2(&details, '\n');
		FUNC1(&details,
						 FUNC0("Server has FLOAT8PASSBYVAL = %s, library has %s."),
						 magic_data.float8byval ? "true" : "false",
						 module_magic_data->float8byval ? "true" : "false");
	}

	if (details.len == 0)
		FUNC3(&details,
							   FUNC0("Magic block has unexpected length or padding difference."));

	FUNC4(ERROR,
			(FUNC7("incompatible library \"%s\": magic block mismatch",
					libname),
			 FUNC6("%s", details.data)));
}