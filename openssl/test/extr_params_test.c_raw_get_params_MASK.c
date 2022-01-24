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
struct object_st {int p1; double p2; char* p4; char* p5; char* p6; int /*<<< orphan*/  p3; } ;
struct TYPE_3__ {int return_size; scalar_t__ data; int /*<<< orphan*/ * key; int /*<<< orphan*/  data_size; } ;
typedef  TYPE_1__ OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(void *vobj, OSSL_PARAM *params)
{
    struct object_st *obj = vobj;

    for (; params->key != NULL; params++)
        if (FUNC3(params->key, "p1") == 0) {
            params->return_size = sizeof(obj->p1);
            *(int *)params->data = obj->p1;
        } else if (FUNC3(params->key, "p2") == 0) {
            params->return_size = sizeof(obj->p2);
            *(double *)params->data = obj->p2;
        } else if (FUNC3(params->key, "p3") == 0) {
            size_t bytes = FUNC1(obj->p3);

            params->return_size = bytes;
            if (!FUNC2(params->data_size, bytes))
                return 0;
            FUNC0(obj->p3, params->data, bytes);
        } else if (FUNC3(params->key, "p4") == 0) {
            size_t bytes = FUNC5(obj->p4) + 1;

            params->return_size = bytes;
            if (!FUNC2(params->data_size, bytes))
                return 0;
            FUNC4(params->data, obj->p4);
        } else if (FUNC3(params->key, "p5") == 0) {
            size_t bytes = FUNC5(obj->p5) + 1;

            params->return_size = bytes;
            if (!FUNC2(params->data_size, bytes))
                return 0;
            FUNC4(params->data, obj->p5);
        } else if (FUNC3(params->key, "p6") == 0) {
            /*
             * We COULD also use OPENSSL_FULL_VERSION_STR directly and
             * use sizeof(OPENSSL_FULL_VERSION_STR) instead of calling
             * strlen().
             * The caller wouldn't know the difference.
             */
            size_t bytes = FUNC5(obj->p6) + 1;

            params->return_size = bytes;
            *(const char **)params->data = obj->p6;
        }

    return 1;
}