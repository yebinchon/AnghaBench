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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEBUG3 ; 
 char* Dynamic_library_path ; 
 int /*<<< orphan*/  ERRCODE_INVALID_NAME ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,size_t) ; 
 int FUNC15 (char const*) ; 
 char* FUNC16 (char*) ; 

__attribute__((used)) static char *
FUNC17(const char *basename)
{
	const char *p;
	size_t		baselen;

	FUNC0(basename != NULL);
	FUNC0(FUNC8(basename) == NULL);
	FUNC1(Dynamic_library_path != NULL);

	p = Dynamic_library_path;
	if (FUNC15(p) == 0)
		return NULL;

	baselen = FUNC15(basename);

	for (;;)
	{
		size_t		len;
		char	   *piece;
		char	   *mangled;
		char	   *full;

		piece = FUNC9(p);
		if (piece == p)
			FUNC4(ERROR,
					(FUNC5(ERRCODE_INVALID_NAME),
					 FUNC6("zero-length component in parameter \"dynamic_library_path\"")));

		if (piece == NULL)
			len = FUNC15(p);
		else
			len = piece - p;

		piece = FUNC11(len + 1);
		FUNC14(piece, p, len + 1);

		mangled = FUNC16(piece);
		FUNC12(piece);

		FUNC2(mangled);

		/* only absolute paths */
		if (!FUNC10(mangled))
			FUNC4(ERROR,
					(FUNC5(ERRCODE_INVALID_NAME),
					 FUNC6("component in parameter \"dynamic_library_path\" is not an absolute path")));

		full = FUNC11(FUNC15(mangled) + 1 + baselen + 1);
		FUNC13(full, "%s/%s", mangled, basename);
		FUNC12(mangled);

		FUNC3(DEBUG3, "find_in_dynamic_libpath: trying \"%s\"", full);

		if (FUNC7(full))
			return full;

		FUNC12(full);

		if (p[len] == '\0')
			break;
		else
			p += len + 1;
	}

	return NULL;
}