#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut64 ;
struct zip_source {int dummy; } ;
struct zip {int dummy; } ;
struct TYPE_3__ {int entry; scalar_t__ name; int /*<<< orphan*/  b; int /*<<< orphan*/  rw; int /*<<< orphan*/  mode; int /*<<< orphan*/  perm; int /*<<< orphan*/  archivename; } ;
typedef  TYPE_1__ RIOZipFileObj ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct zip* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct zip*,scalar_t__,struct zip_source*) ; 
 int /*<<< orphan*/  FUNC3 (struct zip*) ; 
 int FUNC4 (struct zip*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct zip*,int,struct zip_source*) ; 
 struct zip_source* FUNC6 (struct zip*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zip_source*) ; 

int FUNC8(RIOZipFileObj *zfo) {
	int res = false;
	struct zip * zipArch;

	if (!zfo) {
		return res;
	}

	zipArch = FUNC1 (
		zfo->archivename, zfo->perm, zfo->mode, zfo->rw);
	if (!zipArch) {
		return res;
	}

	ut64 tmpsz;
	const ut8 *tmp = FUNC0 (zfo->b, &tmpsz);
	struct zip_source *s = FUNC6 (zipArch, tmp, tmpsz, 0);
	if (s && zfo->entry != -1) {
		if (FUNC5(zipArch, zfo->entry, s) == 0) {
			res = true;
		}
	} else if (s && zfo->name) {
		if (FUNC2 (zipArch, zfo->name, s) == 0) {
			zfo->entry = FUNC4 (zipArch, zfo->name, 0);
			res = true;
		}
	}
	// s (zip_source) is freed when the archive is closed, i think - dso
	FUNC3 (zipArch);
	if (s) {
		FUNC7 (s);
	}
	return res;
}