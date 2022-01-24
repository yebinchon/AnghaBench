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
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_5__ {int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ inifile ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SUCCESS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(inifile *dba, size_t pos_start, size_t pos_end, inifile **ini_copy)
{
	php_stream *fp;

	if (pos_start == pos_end) {
		*ini_copy = NULL;
		return SUCCESS;
	}
	if ((fp = FUNC4(0, 64 * 1024)) == NULL) {
		FUNC1(NULL, E_WARNING, "Could not create temporary stream");
		*ini_copy = NULL;
		return FAILURE;
	}

	if ((*ini_copy = FUNC0(fp, 1, 0)) == NULL) {
		/* writes error */
		return FAILURE;
	}
	FUNC3(dba->fp, pos_start, SEEK_SET);
	if (SUCCESS != FUNC2(dba->fp, fp, pos_end - pos_start, NULL)) {
		FUNC1(NULL, E_WARNING, "Could not copy group [%zu - %zu] to temporary stream", pos_start, pos_end);
		return FAILURE;
	}
	return SUCCESS;
}