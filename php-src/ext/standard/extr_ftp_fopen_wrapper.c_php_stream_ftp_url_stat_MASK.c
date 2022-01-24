#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp_line ;
typedef  int time_t ;
struct tm {int tm_year; long tm_sec; int tm_isdst; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; } ;
struct TYPE_8__ {int /*<<< orphan*/ * path; } ;
typedef  TYPE_2__ php_url ;
typedef  int /*<<< orphan*/  php_stream_wrapper ;
struct TYPE_7__ {int st_mode; int st_mtime; int st_atime; int st_ctime; int st_nlink; int st_rdev; int st_blksize; int st_blocks; int /*<<< orphan*/  st_size; scalar_t__ st_gid; scalar_t__ st_uid; scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct TYPE_9__ {TYPE_1__ sb; } ;
typedef  TYPE_3__ php_stream_statbuf ;
typedef  int /*<<< orphan*/  php_stream_context ;
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int FUNC4 (struct tm*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tm* FUNC6 (int*,struct tm*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (char*,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,long*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(php_stream_wrapper *wrapper, const char *url, int flags, php_stream_statbuf *ssb, php_stream_context *context)
{
	php_stream *stream = NULL;
	php_url *resource = NULL;
	int result;
	char tmp_line[512];

	/* If ssb is NULL then someone is misbehaving */
	if (!ssb) return -1;

	stream = FUNC5(wrapper, url, "r", 0, NULL, context, NULL, &resource, NULL, NULL);
	if (!stream) {
		goto stat_errexit;
	}

	ssb->sb.st_mode = 0644;									/* FTP won't give us a valid mode, so approximate one based on being readable */
	FUNC8(stream, "CWD %s\r\n", (resource->path != NULL ? FUNC1(resource->path) : "/")); /* If we can CWD to it, it's a directory (maybe a link, but we can't tell) */
	result = FUNC0(stream);
	if (result < 200 || result > 299) {
		ssb->sb.st_mode |= S_IFREG;
	} else {
		ssb->sb.st_mode |= S_IFDIR | S_IXUSR | S_IXGRP | S_IXOTH;
	}

	FUNC9(stream, "TYPE I\r\n"); /* we need this since some servers refuse to accept SIZE command in ASCII mode */

	result = FUNC0(stream);

	if(result < 200 || result > 299) {
		goto stat_errexit;
	}

	FUNC8(stream, "SIZE %s\r\n", (resource->path != NULL ? FUNC1(resource->path) : "/"));
	result = FUNC0(stream);
	if (result < 200 || result > 299) {
		/* Failure either means it doesn't exist
		   or it's a directory and this server
		   fails on listing directory sizes */
		if (ssb->sb.st_mode & S_IFDIR) {
			ssb->sb.st_size = 0;
		} else {
			goto stat_errexit;
		}
	} else {
		ssb->sb.st_size = FUNC2(tmp_line + 4);
	}

	FUNC8(stream, "MDTM %s\r\n", (resource->path != NULL ? FUNC1(resource->path) : "/"));
	result = FUNC0(stream);
	if (result == 213) {
		char *p = tmp_line + 4;
		int n;
		struct tm tm, tmbuf, *gmt;
		time_t stamp;

		while ((size_t)(p - tmp_line) < sizeof(tmp_line) && !FUNC3(*p)) {
			p++;
		}

		if ((size_t)(p - tmp_line) > sizeof(tmp_line)) {
			goto mdtm_error;
		}

		n = FUNC11(p, "%4u%2u%2u%2u%2u%2u", &tm.tm_year, &tm.tm_mon, &tm.tm_mday, &tm.tm_hour, &tm.tm_min, &tm.tm_sec);
		if (n != 6) {
			goto mdtm_error;
		}

		tm.tm_year -= 1900;
		tm.tm_mon--;
		tm.tm_isdst = -1;

		/* figure out the GMT offset */
		stamp = FUNC12(NULL);
		gmt = FUNC6(&stamp, &tmbuf);
		if (!gmt) {
			goto mdtm_error;
		}
		gmt->tm_isdst = -1;

		/* apply the GMT offset */
		tm.tm_sec += (long)(stamp - FUNC4(gmt));
		tm.tm_isdst = gmt->tm_isdst;

		ssb->sb.st_mtime = FUNC4(&tm);
	} else {
		/* error or unsupported command */
mdtm_error:
		ssb->sb.st_mtime = -1;
	}

	ssb->sb.st_ino = 0;						/* Unknown values */
	ssb->sb.st_dev = 0;
	ssb->sb.st_uid = 0;
	ssb->sb.st_gid = 0;
	ssb->sb.st_atime = -1;
	ssb->sb.st_ctime = -1;

	ssb->sb.st_nlink = 1;
	ssb->sb.st_rdev = -1;
#ifdef HAVE_STRUCT_STAT_ST_BLKSIZE
	ssb->sb.st_blksize = 4096;				/* Guess since FTP won't expose this information */
#ifdef HAVE_STRUCT_STAT_ST_BLOCKS
	ssb->sb.st_blocks = (int)((4095 + ssb->sb.st_size) / ssb->sb.st_blksize); /* emulate ceil */
#endif
#endif
	FUNC7(stream);
	FUNC10(resource);
	return 0;

stat_errexit:
	if (resource) {
		FUNC10(resource);
	}
	if (stream) {
		FUNC7(stream);
	}
	return -1;
}