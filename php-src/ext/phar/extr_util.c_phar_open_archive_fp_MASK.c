#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fname; } ;
typedef  TYPE_1__ phar_archive_data ;

/* Variables and functions */
 int FAILURE ; 
 int IGNORE_URL ; 
 int STREAM_MUST_SEEK ; 
 int SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 

int FUNC4(phar_archive_data *phar) /* {{{ */
{
	if (FUNC0(phar)) {
		return SUCCESS;
	}

	if (FUNC2(phar->fname)) {
		return FAILURE;
	}

	FUNC1(phar, FUNC3(phar->fname, "rb", IGNORE_URL|STREAM_MUST_SEEK|0, NULL));

	if (!FUNC0(phar)) {
		return FAILURE;
	}

	return SUCCESS;
}