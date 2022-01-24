#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ inifile ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC3(inifile *dba, size_t size)
{
	int res;

	if ((res=FUNC2(dba->fp, size)) != 0) {
		FUNC0(NULL, E_WARNING, "Error in ftruncate: %d", res);
		return FAILURE;
	}
	FUNC1(dba->fp, size, SEEK_SET);
	return SUCCESS;
}