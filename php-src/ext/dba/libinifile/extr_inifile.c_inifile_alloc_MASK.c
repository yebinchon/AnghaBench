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
struct TYPE_5__ {int readonly; int /*<<< orphan*/ * fp; } ;
typedef  TYPE_1__ inifile ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

inifile * FUNC4(php_stream *fp, int readonly, int persistent)
{
	inifile *dba;

	if (!readonly) {
		if (!FUNC3(fp)) {
			FUNC2(NULL, E_WARNING, "Can't truncate this stream");
			return NULL;
		}
	}

	dba = FUNC1(sizeof(inifile), persistent);
	FUNC0(dba, 0, sizeof(inifile));
	dba->fp = fp;
	dba->readonly = readonly;
	return dba;
}