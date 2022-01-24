#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_stream_context ;
struct TYPE_2__ {char* filename; int /*<<< orphan*/  error_no; scalar_t__ error_msg; int /*<<< orphan*/ * fd; } ;
typedef  TYPE_1__ MYSQLND_INFILE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  CR_UNKNOWN_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MYSQLND_EE_FILENOTFOUND ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  open_basedir ; 
 int FUNC4 (char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const* const) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 

__attribute__((used)) static
int FUNC8(void ** ptr, const char * const filename)
{
	MYSQLND_INFILE_INFO	*info;
	php_stream_context	*context = NULL;

	FUNC0("mysqlnd_local_infile_init");

	info = ((MYSQLND_INFILE_INFO *)FUNC3(1, sizeof(MYSQLND_INFILE_INFO)));
	if (!info) {
		FUNC1(1);
	}

	*ptr = info;

	/* check open_basedir */
	if (FUNC2(open_basedir)) {
		if (FUNC4(filename, 0) == -1) {
			FUNC7(info->error_msg, "open_basedir restriction in effect. Unable to open file");
			info->error_no = CR_UNKNOWN_ERROR;
			FUNC1(1);
		}
	}

	info->filename = filename;
	info->fd = FUNC5((char *)filename, "r", 0, NULL, context);

	if (info->fd == NULL) {
		FUNC6((char *)info->error_msg, sizeof(info->error_msg), "Can't find file '%-.64s'.", filename);
		info->error_no = MYSQLND_EE_FILENOTFOUND;
		FUNC1(1);
	}

	FUNC1(0);
}