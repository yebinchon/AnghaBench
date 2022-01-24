#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t pos; TYPE_1__* entries; } ;
typedef  TYPE_2__ zend_blacklist ;
typedef  int /*<<< orphan*/  real_path ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {int path_length; char* path; size_t id; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ACCEL_LOG_DEBUG ; 
 int /*<<< orphan*/  ACCEL_LOG_ERROR ; 
 int /*<<< orphan*/  ACCEL_LOG_WARNING ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC13 (char*,int) ; 
 char* FUNC14 (char*,int) ; 

__attribute__((used)) static void FUNC15(zend_blacklist *blacklist, char *filename)
{
	char buf[MAXPATHLEN + 1], real_path[MAXPATHLEN + 1], *blacklist_path = NULL;
	FILE *fp;
	int path_length, blacklist_path_length;

	if ((fp = FUNC5(filename, "r")) == NULL) {
		FUNC12(ACCEL_LOG_WARNING, "Cannot load blacklist file: %s\n", filename);
		return;
	}

	FUNC12(ACCEL_LOG_DEBUG,"Loading blacklist file:  '%s'", filename);

	if (FUNC0(filename, buf)) {
		blacklist_path_length = FUNC13(buf, FUNC10(buf));
		blacklist_path = FUNC14(buf, blacklist_path_length);
	}

	FUNC9(buf, 0, sizeof(buf));
	FUNC9(real_path, 0, sizeof(real_path));

	while (FUNC4(buf, MAXPATHLEN, fp) != NULL) {
		char *path_dup, *pbuf;
		path_length = FUNC10(buf);
		if (path_length > 0 && buf[path_length - 1] == '\n') {
			buf[--path_length] = 0;
			if (path_length > 0 && buf[path_length - 1] == '\r') {
				buf[--path_length] = 0;
			}
		}

		/* Strip ctrl-m prefix */
		pbuf = &buf[0];
		while (*pbuf == '\r') {
			*pbuf++ = 0;
			path_length--;
		}

		/* strip \" */
		if (pbuf[0] == '\"' && pbuf[path_length - 1]== '\"') {
			*pbuf++ = 0;
			path_length -= 2;
		}

		if (path_length == 0) {
			continue;
		}

		/* skip comments */
		if (pbuf[0]==';') {
			continue;
		}

		path_dup = FUNC14(pbuf, path_length);
		if (blacklist_path) {
			FUNC2(path_dup, real_path, blacklist_path, blacklist_path_length);
		} else {
			FUNC1(path_dup, real_path);
		}
		path_length = FUNC10(real_path);

		FUNC6(path_dup);

		FUNC11(blacklist);
		blacklist->entries[blacklist->pos].path_length = path_length;
		blacklist->entries[blacklist->pos].path = (char *)FUNC7(path_length + 1);
		if (!blacklist->entries[blacklist->pos].path) {
			FUNC12(ACCEL_LOG_ERROR, "malloc() failed\n");
			FUNC3(fp);
			return;
		}
		blacklist->entries[blacklist->pos].id = blacklist->pos;
		FUNC8(blacklist->entries[blacklist->pos].path, real_path, path_length + 1);
		blacklist->pos++;
	}
	FUNC3(fp);
	if (blacklist_path) {
		FUNC6(blacklist_path);
	}
}