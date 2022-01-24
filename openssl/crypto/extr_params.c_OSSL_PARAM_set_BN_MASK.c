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
struct TYPE_3__ {size_t return_size; scalar_t__ data_type; size_t data_size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ OSSL_PARAM_UNSIGNED_INTEGER ; 

int FUNC3(OSSL_PARAM *p, const BIGNUM *val)
{
    size_t bytes;

    if (p == NULL)
        return 0;
    p->return_size = 0;
    if (val == NULL || p->data_type != OSSL_PARAM_UNSIGNED_INTEGER)
        return 0;

    /* For the moment, only positive values are permitted */
    if (FUNC1(val))
        return 0;

    bytes = (size_t)FUNC2(val);
    p->return_size = bytes;
    if (p->data == NULL)
        return 1;
    if (p->data_size >= bytes) {
        p->return_size = p->data_size;
        return FUNC0(val, p->data, p->data_size) >= 0;
    }
    return 0;
}