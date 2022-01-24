#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct object_st {int /*<<< orphan*/  p6; int /*<<< orphan*/  p5; int /*<<< orphan*/  p4; int /*<<< orphan*/  p3; int /*<<< orphan*/  p2; int /*<<< orphan*/  p1; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void *vobj, OSSL_PARAM *params)
{
    struct object_st *obj = vobj;
    OSSL_PARAM *p = NULL;

    if ((p = FUNC0(params, "p1")) != NULL
        && !FUNC6(FUNC3(p, obj->p1)))
        return 0;
    if ((p = FUNC0(params, "p2")) != NULL
        && !FUNC6(FUNC2(p, obj->p2)))
        return 0;
    if ((p = FUNC0(params, "p3")) != NULL
        && !FUNC6(FUNC1(p, obj->p3)))
        return 0;
    if ((p = FUNC0(params, "p4")) != NULL
        && !FUNC6(FUNC5(p, obj->p4)))
        return 0;
    if ((p = FUNC0(params, "p5")) != NULL
        && !FUNC6(FUNC5(p, obj->p5)))
        return 0;
    if ((p = FUNC0(params, "p6")) != NULL
        && !FUNC6(FUNC4(p, obj->p6)))
        return 0;

    return 1;
}