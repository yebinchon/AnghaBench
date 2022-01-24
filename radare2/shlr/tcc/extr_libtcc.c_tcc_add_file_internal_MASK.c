#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  nb_target_deps; int /*<<< orphan*/  target_deps; } ;
typedef  TYPE_1__ TCCState ;

/* Variables and functions */
 int AFF_PREPROCESS ; 
 int AFF_PRINT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (void***,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (char const*) ; 
 int FUNC7 (TYPE_1__*,char const*) ; 
 int FUNC8 (TYPE_1__*) ; 

int FUNC9(TCCState *s1, const char *filename, int flags)
{
	const char *ext;
	int ret;

	/* find source file type with extension */
	ext = FUNC6 (filename);
	if (ext[0]) {
		ext++;
	}

	/* open the file */
	ret = FUNC7 (s1, filename);
	if (ret < 0) {
		if (flags & AFF_PRINT_ERROR) {
			FUNC5 ("file '%s' not found", filename);
		}
		return ret;
	}

	/* update target deps */
	FUNC1 ((void ***) &s1->target_deps, &s1->nb_target_deps,
		FUNC2 (filename));

	if (flags & AFF_PREPROCESS) {
		ret = FUNC8 (s1);
		goto the_end;
	}

	if (!ext[0] || !FUNC0 (ext, "c") || !FUNC0 (ext, "h") || !FUNC0 (ext, "cparse")) {
		/* C file assumed */
		ret = FUNC4 (s1);
		goto the_end;
	}
	if (ret < 0) {
		FUNC5 ("unrecognized file type");
	}

the_end:
	FUNC3 ();
	return ret;
}