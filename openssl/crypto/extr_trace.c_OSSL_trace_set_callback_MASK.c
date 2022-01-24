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
struct trace_data_st {int category; void* data; int /*<<< orphan*/ * callback; } ;
typedef  int /*<<< orphan*/ * OSSL_trace_cb ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct trace_data_st*) ; 
 int /*<<< orphan*/  CALLBACK_CHANNEL ; 
 int /*<<< orphan*/  FUNC3 (struct trace_data_st*) ; 
 struct trace_data_st* FUNC4 (int) ; 
 int OSSL_TRACE_CATEGORY_NUM ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_attach_w_callback_cb ; 
 int /*<<< orphan*/  trace_detach_cb ; 
 int /*<<< orphan*/  trace_method ; 

int FUNC6(int category, OSSL_trace_cb callback, void *data)
{
#ifndef OPENSSL_NO_TRACE
    BIO *channel = NULL;
    struct trace_data_st *trace_data = NULL;

    if (category < 0 || category >= OSSL_TRACE_CATEGORY_NUM)
        return 0;

    if (callback != NULL) {
        if ((channel = FUNC1(&trace_method)) == NULL
            || (trace_data =
                FUNC4(sizeof(struct trace_data_st))) == NULL)
            goto err;

        trace_data->callback = callback;
        trace_data->category = category;
        trace_data->data = data;

        FUNC2(channel, trace_data);
    }

    if (!FUNC5(category, CALLBACK_CHANNEL, &channel, NULL, NULL,
                        trace_attach_w_callback_cb, trace_detach_cb))
        goto err;

    return 1;

 err:
    FUNC0(channel);
    FUNC3(trace_data);
#endif

    return 0;
}