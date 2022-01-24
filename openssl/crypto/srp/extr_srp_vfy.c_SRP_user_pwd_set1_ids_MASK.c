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
struct TYPE_3__ {int /*<<< orphan*/ * info; int /*<<< orphan*/ * id; } ;
typedef  TYPE_1__ SRP_user_pwd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (char const*) ; 

int FUNC2(SRP_user_pwd *vinfo, const char *id,
                          const char *info)
{
    FUNC0(vinfo->id);
    FUNC0(vinfo->info);
    if (id != NULL && NULL == (vinfo->id = FUNC1(id)))
        return 0;
    return (info == NULL || NULL != (vinfo->info = FUNC1(info)));
}