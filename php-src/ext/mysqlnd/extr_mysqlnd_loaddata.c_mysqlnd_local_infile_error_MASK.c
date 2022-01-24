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
struct TYPE_2__ {char* error_msg; int /*<<< orphan*/  error_no; } ;
typedef  TYPE_1__ MYSQLND_INFILE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  CR_UNKNOWN_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 

__attribute__((used)) static
int	FUNC4(void * ptr, char *error_buf, unsigned int error_buf_len)
{
	MYSQLND_INFILE_INFO	*info = (MYSQLND_INFILE_INFO *)ptr;

	FUNC0("mysqlnd_local_infile_error");

	if (info) {
		FUNC3(error_buf, info->error_msg, error_buf_len);
		FUNC1("have info, %d", info->error_no);
		FUNC2(info->error_no);
	}

	FUNC3(error_buf, "Unknown error", error_buf_len);
	FUNC1("no info, %d", CR_UNKNOWN_ERROR);
	FUNC2(CR_UNKNOWN_ERROR);
}