#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  DBState ;
typedef  TYPE_1__ ControlFileData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  pg_data ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DBState
FUNC5(void)
{
	DBState		ret;
	bool		crc_ok;
	ControlFileData *control_file_data = FUNC2(pg_data, &crc_ok);

	if (!crc_ok)
	{
		FUNC4(FUNC0("%s: control file appears to be corrupt\n"), progname);
		FUNC1(1);
	}

	ret = control_file_data->state;
	FUNC3(control_file_data);
	return ret;
}