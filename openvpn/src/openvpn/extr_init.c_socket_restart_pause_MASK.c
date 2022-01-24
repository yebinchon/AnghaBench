#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int restart_sleep_seconds; } ;
struct TYPE_6__ {int proto; int connect_retry_seconds; int connect_retry_seconds_max; } ;
struct TYPE_7__ {int unsuccessful_attempts; TYPE_2__ ce; TYPE_1__* connection_list; int /*<<< orphan*/  gremlin; } ;
struct context {TYPE_4__ persist; TYPE_3__ options; } ;
struct TYPE_5__ {int len; } ;

/* Variables and functions */
 scalar_t__ AR_NOINTERACT ; 
 int /*<<< orphan*/  D_RESTART ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  PROTO_TCP_CLIENT 130 
#define  PROTO_TCP_SERVER 129 
#define  PROTO_UDP 128 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC7(struct context *c)
{
    int sec = 2;
    int backoff = 0;

    switch (c->options.ce.proto)
    {
        case PROTO_TCP_SERVER:
            sec = 1;
            break;

        case PROTO_UDP:
        case PROTO_TCP_CLIENT:
            sec = c->options.ce.connect_retry_seconds;
            break;
    }

#ifdef ENABLE_DEBUG
    if (GREMLIN_CONNECTION_FLOOD_LEVEL(c->options.gremlin))
    {
        sec = 0;
    }
#endif

#if P2MP
    if (auth_retry_get() == AR_NOINTERACT)
    {
        sec = 10;
    }
#endif

    /* Slow down reconnection after 5 retries per remote -- for tcp only in client mode */
    if (c->options.ce.proto != PROTO_TCP_SERVER)
    {
        backoff = (c->options.unsuccessful_attempts / c->options.connection_list->len) - 4;
        if (backoff > 0)
        {
            /* sec is less than 2^16; we can left shift it by up to 15 bits without overflow */
            sec = FUNC4(sec, 1) << FUNC5(backoff, 15);
        }

        if (sec > c->options.ce.connect_retry_seconds_max)
        {
            sec = c->options.ce.connect_retry_seconds_max;
        }
    }

    if (c->persist.restart_sleep_seconds > 0 && c->persist.restart_sleep_seconds > sec)
    {
        sec = c->persist.restart_sleep_seconds;
    }
    else if (c->persist.restart_sleep_seconds == -1)
    {
        sec = 0;
    }
    c->persist.restart_sleep_seconds = 0;

    /* do management hold on context restart, i.e. second, third, fourth, etc. initialization */
    if (FUNC2(sec))
    {
        sec = 0;
    }

    if (sec)
    {
        FUNC6(D_RESTART, "Restart pause, %d second(s)", sec);
        FUNC3(sec);
    }
}