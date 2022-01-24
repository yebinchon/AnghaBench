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
struct object_st {int p1; double p2; char const* p6; int /*<<< orphan*/  p6_l; int /*<<< orphan*/  p5; scalar_t__ p5_l; int /*<<< orphan*/  p4; int /*<<< orphan*/  p3; } ;
struct TYPE_3__ {int /*<<< orphan*/  data_size; scalar_t__ data; int /*<<< orphan*/ * key; } ;
typedef  TYPE_1__ OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void *vobj, const OSSL_PARAM *params)
{
    struct object_st *obj = vobj;

    for (; params->key != NULL; params++)
        if (FUNC5(params->key, "p1") == 0) {
            obj->p1 = *(int *)params->data;
        } else if (FUNC5(params->key, "p2") == 0) {
            obj->p2 = *(double *)params->data;
        } else if (FUNC5(params->key, "p3") == 0) {
            FUNC0(obj->p3);
            if (!FUNC4(obj->p3 = FUNC1(params->data,
                                                 params->data_size, NULL)))
                return 0;
        } else if (FUNC5(params->key, "p4") == 0) {
            FUNC2(obj->p4);
            if (!FUNC4(obj->p4 = FUNC3(params->data,
                                                    params->data_size)))
                return 0;
        } else if (FUNC5(params->key, "p5") == 0) {
            FUNC7(obj->p5, params->data, params->data_size);
            obj->p5_l = FUNC6(obj->p5) + 1;
        } else if (FUNC5(params->key, "p6") == 0) {
            obj->p6 = *(const char **)params->data;
            obj->p6_l = params->data_size;
        }

    return 1;
}