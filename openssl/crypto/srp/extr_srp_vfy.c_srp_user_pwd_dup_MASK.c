#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  v; int /*<<< orphan*/  s; int /*<<< orphan*/  info; int /*<<< orphan*/  id; int /*<<< orphan*/  N; int /*<<< orphan*/  g; } ;
typedef  TYPE_1__ SRP_user_pwd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SRP_user_pwd *FUNC6(SRP_user_pwd *src)
{
    SRP_user_pwd *ret;

    if (src == NULL)
        return NULL;
    if ((ret = FUNC2()) == NULL)
        return NULL;

    FUNC5(ret, src->g, src->N);
    if (!FUNC4(ret, src->id, src->info)
        || !FUNC3(ret, FUNC0(src->s), FUNC0(src->v))) {
            FUNC1(ret);
            return NULL;
    }
    return ret;
}