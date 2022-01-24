#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  wrapper; scalar_t__ abstract; } ;
typedef  TYPE_2__ php_stream ;
struct TYPE_7__ {int /*<<< orphan*/  phar; TYPE_1__* internal_file; } ;
typedef  TYPE_3__ phar_entry_data ;
struct TYPE_5__ {int /*<<< orphan*/  timestamp; scalar_t__ is_modified; } ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  REPORT_ERRORS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(php_stream *stream) /* {{{ */
{
	char *error;
	int ret;
	phar_entry_data *data = (phar_entry_data *) stream->abstract;

	if (data->internal_file->is_modified) {
		data->internal_file->timestamp = FUNC3(0);
		ret = FUNC1(data->phar, 0, 0, 0, &error);
		if (error) {
			FUNC2(stream->wrapper, REPORT_ERRORS, "%s", error);
			FUNC0(error);
		}
		return ret;
	} else {
		return EOF;
	}
}