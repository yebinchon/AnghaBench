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
typedef  scalar_t__ ut64 ;
typedef  int /*<<< orphan*/  ut32 ;
struct zip_stat {int /*<<< orphan*/  name; } ;
struct zip {int dummy; } ;
typedef  int /*<<< orphan*/  RList ;

/* Variables and functions */
 int /*<<< orphan*/  free ; 
 struct zip* FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zip*) ; 
 scalar_t__ FUNC5 (struct zip*) ; 
 int /*<<< orphan*/  FUNC6 (struct zip*,scalar_t__,int /*<<< orphan*/ ,struct zip_stat*) ; 
 int /*<<< orphan*/  FUNC7 (struct zip_stat*) ; 

RList * FUNC8(char *archivename, ut32 perm, int mode, int rw) {
	struct zip *zipArch = FUNC0 (archivename, perm, mode, rw);
	ut64 num_entries = 0, i = 0;
	RList *files = NULL;
	struct zip_stat sb;
	char *name;
	if (zipArch) {
		files = FUNC2 (free);
		if (!files) {
			FUNC4 (zipArch);
			return NULL;
		}
		num_entries = FUNC5 (zipArch);
		for (i = 0; i < num_entries; i++) {
			FUNC7 (&sb);
			FUNC6 (zipArch, i, 0, &sb);
			if ((name = FUNC3 (sb.name))) {
				FUNC1 (files, name);
			}
		}
	}
	FUNC4 (zipArch);
	return files;
}