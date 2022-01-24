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
struct TYPE_3__ {int /*<<< orphan*/ ** append_rel_array; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_1__ PlannerInfo ;
typedef  int /*<<< orphan*/  AppendRelInfo ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int) ; 

AppendRelInfo **
FUNC4(PlannerInfo *root, Relids relids, int *nappinfos)
{
	AppendRelInfo **appinfos;
	int			cnt = 0;
	int			i;

	*nappinfos = FUNC1(relids);
	appinfos = (AppendRelInfo **) FUNC3(sizeof(AppendRelInfo *) * *nappinfos);

	i = -1;
	while ((i = FUNC0(relids, i)) >= 0)
	{
		AppendRelInfo *appinfo = root->append_rel_array[i];

		if (!appinfo)
			FUNC2(ERROR, "child rel %d not found in append_rel_array", i);

		appinfos[cnt++] = appinfo;
	}
	return appinfos;
}