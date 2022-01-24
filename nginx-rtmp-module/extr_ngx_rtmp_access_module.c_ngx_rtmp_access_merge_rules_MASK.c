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
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_5__ {scalar_t__ nelts; int size; int /*<<< orphan*/  elts; } ;
typedef  TYPE_1__ ngx_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 void* FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ngx_int_t
FUNC2(ngx_array_t *prev, ngx_array_t *rules)
{
    void   *p;

    if (prev->nelts == 0) {
        return NGX_OK;
    }

    if (rules->nelts == 0) {
        *rules = *prev;
        return NGX_OK;
    }

    p = FUNC0(rules, prev->nelts);
    if (p == NULL) {
        return NGX_ERROR;
    }

    FUNC1(p, prev->elts, prev->size * prev->nelts);

    return NGX_OK;
}