#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* suffix; int type; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
#define  CALLBACK_CHANNEL 129 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_TRACE_CTRL_END ; 
#define  SIMPLE_CHANNEL 128 
 int /*<<< orphan*/ * current_channel ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_1__* trace_channels ; 
 int /*<<< orphan*/  trace_lock ; 

void FUNC7(int category, BIO * channel)
{
#ifndef OPENSSL_NO_TRACE
    char *suffix = NULL;

    category = FUNC5(category);
    suffix = trace_channels[category].suffix;
    if (channel != NULL
        && FUNC4(channel == current_channel)) {
        (void)FUNC1(channel);
        switch (trace_channels[category].type) {
        case SIMPLE_CHANNEL:
            if (suffix != NULL) {
                (void)FUNC2(channel, suffix);
                (void)FUNC2(channel, "\n");
            }
            break;
        case CALLBACK_CHANNEL:
            (void)FUNC0(channel, OSSL_TRACE_CTRL_END,
                           suffix == NULL ? 0 : FUNC6(suffix), suffix);
            break;
        }
        current_channel = NULL;
        FUNC3(trace_lock);
    }
#endif
}