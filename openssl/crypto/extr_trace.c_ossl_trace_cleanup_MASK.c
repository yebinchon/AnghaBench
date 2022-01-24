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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int OSSL_TRACE_CATEGORY_NUM ; 
 int OSSL_TRACE_CATEGORY_TRACE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,char const**,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_attach_cb ; 
 int /*<<< orphan*/  trace_detach_cb ; 
 int /*<<< orphan*/  trace_lock ; 

void FUNC2(void)
{
#ifndef OPENSSL_NO_TRACE
    int category;
    BIO *channel = NULL;
    const char *prefix = NULL;
    const char *suffix = NULL;

    for (category = 0; category < OSSL_TRACE_CATEGORY_NUM; category++) {
        /* We force the TRACE category to be treated last */
        if (category == OSSL_TRACE_CATEGORY_TRACE)
            continue;
        FUNC1(category, 0, &channel, &prefix, &suffix,
                       trace_attach_cb, trace_detach_cb);
    }
    FUNC1(OSSL_TRACE_CATEGORY_TRACE, 0, &channel,
                   &prefix, &suffix,
                   trace_attach_cb, trace_detach_cb);
    FUNC0(trace_lock);
#endif
}