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
struct TYPE_2__ {char* prefix; int type; int /*<<< orphan*/ * bio; } ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
#define  CALLBACK_CHANNEL 129 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_TRACE_CTRL_BEGIN ; 
#define  SIMPLE_CHANNEL 128 
 int /*<<< orphan*/ * current_channel ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* trace_channels ; 
 int /*<<< orphan*/  trace_lock ; 

BIO *FUNC5(int category)
{
    BIO *channel = NULL;
#ifndef OPENSSL_NO_TRACE
    char *prefix = NULL;

    category = FUNC3(category);
    if (category < 0)
        return NULL;

    channel = trace_channels[category].bio;
    prefix = trace_channels[category].prefix;

    if (channel != NULL) {
        FUNC2(trace_lock);
        current_channel = channel;
        switch (trace_channels[category].type) {
        case SIMPLE_CHANNEL:
            if (prefix != NULL) {
                (void)FUNC1(channel, prefix);
                (void)FUNC1(channel, "\n");
            }
            break;
        case CALLBACK_CHANNEL:
            (void)FUNC0(channel, OSSL_TRACE_CTRL_BEGIN,
                           prefix == NULL ? 0 : FUNC4(prefix), prefix);
            break;
        }
    }
#endif
    return channel;
}