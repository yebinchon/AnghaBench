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
struct zip_stat {int /*<<< orphan*/ * name; } ;
struct zip {int dummy; } ;
typedef  int /*<<< orphan*/  RIOZipFileObj ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char const*,struct zip_stat*,int /*<<< orphan*/ ,int,int) ; 
 struct zip* FUNC1 (char const*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct zip*) ; 
 scalar_t__ FUNC5 (struct zip*) ; 
 int /*<<< orphan*/  FUNC6 (struct zip*,scalar_t__,int /*<<< orphan*/ ,struct zip_stat*) ; 
 int /*<<< orphan*/  FUNC7 (struct zip_stat*) ; 

RIOZipFileObj* FUNC8(const char *archivename, const char *filename, ut32 perm, int mode, int rw) {
	RIOZipFileObj *zfo = NULL;
	ut64 i, num_entries;
	struct zip_stat sb;
	struct zip *zipArch = FUNC1 (archivename, perm, mode, rw);
	if (!zipArch) {
		return NULL;
	}
	num_entries = FUNC5 (zipArch);

	for (i = 0; i < num_entries; i++) {
		FUNC7 (&sb);
		FUNC6 (zipArch, i, 0, &sb);
		if (sb.name != NULL) {
			if (FUNC3 (sb.name, filename) == 0) {
				zfo = FUNC0 (
					archivename, filename, &sb,
					perm, mode, rw);
				FUNC2 (zfo);
				break;
			}
		}
	}
	if (!zfo) {
		zfo = FUNC0 (archivename,
			filename, NULL, perm, mode, rw);
	}
	FUNC4 (zipArch);
	return zfo;
}