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
typedef  scalar_t__ ut32 ;
struct zip_stat {int /*<<< orphan*/  name; } ;
struct zip {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 struct zip* FUNC1 (char const*,scalar_t__,int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zip*) ; 
 scalar_t__ FUNC4 (struct zip*) ; 
 int /*<<< orphan*/  FUNC5 (struct zip*,scalar_t__,int /*<<< orphan*/ ,struct zip_stat*) ; 
 int /*<<< orphan*/  FUNC6 (struct zip_stat*) ; 

char * FUNC7(const char * archivename, const char *idx, ut32 perm, int mode, int rw) {
	char *filename = NULL;
	ut64 i, num_entries;
	ut32 file_idx = -1;
	struct zip_stat sb;
	struct zip * zipArch = FUNC1 (archivename, perm, mode, rw);
	if (!idx || !zipArch) {
		FUNC3 (zipArch);
		return filename;
	}
	num_entries = FUNC4 (zipArch);
	file_idx = FUNC0 (idx);
	if ((file_idx == 0 && idx[0] != '0') || (file_idx >= num_entries)) {
		FUNC3 (zipArch);
		return filename;
	}
	for (i = 0; i < num_entries; i++) {
		FUNC6 (&sb);
		FUNC5 (zipArch, i, 0, &sb );
		if (file_idx == i) {
			filename = FUNC2 (sb.name);
			break;
		}
	}
	FUNC3 (zipArch);
	return filename;
}