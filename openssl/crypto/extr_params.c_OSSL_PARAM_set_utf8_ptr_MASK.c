#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ return_size; } ;
typedef  TYPE_1__ OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  OSSL_PARAM_UTF8_PTR ; 
 int FUNC0 (TYPE_1__*,char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (char const*) ; 

int FUNC2(OSSL_PARAM *p, const char *val)
{
    if (p == NULL)
        return 0;
    p->return_size = 0;
    if (val == NULL)
        return 0;
    return FUNC0(p, val, OSSL_PARAM_UTF8_PTR, FUNC1(val) + 1);
}