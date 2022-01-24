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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int ssize_t ;
struct TYPE_7__ {char* d_name; } ;
typedef  TYPE_1__ php_stream_dirent ;
struct TYPE_8__ {scalar_t__ abstract; } ;
typedef  TYPE_2__ php_stream ;
struct TYPE_9__ {TYPE_2__* datastream; } ;
typedef  TYPE_3__ php_ftp_dirstream_data ;

/* Variables and functions */
 size_t FUNC0 (int,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(php_stream *stream, char *buf, size_t count)
{
	php_stream_dirent *ent = (php_stream_dirent *)buf;
	php_stream *innerstream;
	size_t tmp_len;
	zend_string *basename;

	innerstream =  ((php_ftp_dirstream_data *)stream->abstract)->datastream;

	if (count != sizeof(php_stream_dirent)) {
		return -1;
	}

	if (FUNC5(innerstream)) {
		return 0;
	}

	if (!FUNC6(innerstream, ent->d_name, sizeof(ent->d_name), &tmp_len)) {
		return -1;
	}

	basename = FUNC4(ent->d_name, tmp_len, NULL, 0);

	tmp_len = FUNC0(sizeof(ent->d_name), FUNC1(basename) - 1);
	FUNC3(ent->d_name, FUNC2(basename), tmp_len);
	ent->d_name[tmp_len - 1] = '\0';
	FUNC7(basename, 0);

	/* Trim off trailing whitespace characters */
	while (tmp_len > 0 &&
			(ent->d_name[tmp_len - 1] == '\n' || ent->d_name[tmp_len - 1] == '\r' ||
			 ent->d_name[tmp_len - 1] == '\t' || ent->d_name[tmp_len - 1] == ' ')) {
		ent->d_name[--tmp_len] = '\0';
	}

	return sizeof(php_stream_dirent);
}