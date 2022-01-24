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
typedef  int /*<<< orphan*/  zend_uchar ;
struct TYPE_2__ {int /*<<< orphan*/  error_no; int /*<<< orphan*/  error_msg; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ MYSQLND_INFILE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  CR_UNKNOWN_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static
int FUNC4(void * ptr, zend_uchar * buf, unsigned int buf_len)
{
	MYSQLND_INFILE_INFO	*info = (MYSQLND_INFILE_INFO *)ptr;
	int count;

	FUNC0("mysqlnd_local_infile_read");

	count = (int) FUNC2(info->fd, (char *) buf, buf_len);

	if (count < 0) {
		FUNC3(info->error_msg, "Error reading file");
		info->error_no = CR_UNKNOWN_ERROR;
	}

	FUNC1(count);
}