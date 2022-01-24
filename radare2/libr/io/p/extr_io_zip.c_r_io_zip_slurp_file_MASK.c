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
struct zip_stat {int /*<<< orphan*/  size; } ;
struct zip_file {int dummy; } ;
struct zip {int dummy; } ;
struct TYPE_3__ {int entry; int opened; scalar_t__ b; int /*<<< orphan*/  rw; int /*<<< orphan*/  mode; int /*<<< orphan*/  perm; int /*<<< orphan*/  archivename; } ;
typedef  TYPE_1__ RIOZipFileObj ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct zip* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zip*) ; 
 int /*<<< orphan*/  FUNC6 (struct zip_file*) ; 
 struct zip_file* FUNC7 (struct zip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct zip_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct zip*,int,int /*<<< orphan*/ ,struct zip_stat*) ; 
 int /*<<< orphan*/  FUNC10 (struct zip_stat*) ; 

__attribute__((used)) static int FUNC11(RIOZipFileObj *zfo) {
	struct zip_file *zFile = NULL;
	struct zip *zipArch;
	struct zip_stat sb;
	bool res = false;
	if (!zfo) {
		return res;
	}
	zipArch = FUNC4 (
		zfo->archivename, zfo->perm,
		zfo->mode, zfo->rw);

	if (zipArch && zfo && zfo->entry != -1) {
		zFile = FUNC7 (zipArch, zfo->entry, 0);
		if (!zfo->b) {
			zfo->b = FUNC2 ();
		}
		FUNC10 (&sb);
		if (zFile && zfo->b && !FUNC9 (zipArch, zfo->entry, 0, &sb)) {
			ut8 *buf = FUNC0 (1, sb.size);
			if (buf) {
				FUNC8 (zFile, buf, sb.size);
				FUNC3 (zfo->b, buf, sb.size);
				res = true;
				zfo->opened = true;
				FUNC1 (buf);
			}
		}
		FUNC6 (zFile);
	}
	FUNC5 (zipArch);
	return res;
}