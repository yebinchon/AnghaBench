#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dirent {unsigned short d_reclen; int d_ino; scalar_t__ d_off; int /*<<< orphan*/  d_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  cFileName; } ;
struct TYPE_4__ {int finished; scalar_t__ offset; struct dirent dent; TYPE_3__ fileinfo; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  PHP_WIN32_CP_IGNORE_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 

struct dirent *FUNC4(DIR *dp)
{/*{{{*/
	char *_tmp;
	size_t reclen;

	if (!dp || dp->finished)
		return NULL;

	if (dp->offset != 0) {
		if (FUNC0(dp->handle, &(dp->fileinfo)) == 0) {
			dp->finished = 1;
			return NULL;
		}
	}

	_tmp = FUNC3(dp->fileinfo.cFileName, PHP_WIN32_CP_IGNORE_LEN, &reclen);
	if (!_tmp) {
		/* wide to utf8 failed, should never happen. */
		return NULL;
	}
	FUNC2(dp->dent.d_name, _tmp, reclen + 1);
	FUNC1(_tmp);
	dp->dent.d_reclen = (unsigned short)reclen;

	dp->offset++;

	dp->dent.d_ino = 1;
	dp->dent.d_off = dp->offset;

	return &(dp->dent);
}