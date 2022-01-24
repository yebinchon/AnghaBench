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
struct context {int signal_received; scalar_t__ source; char* signal_text; struct context* sig; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct context*) ; 
 unsigned int CC_GC_FREE ; 
 unsigned int CC_HARD_USR1_TO_HUP ; 
 unsigned int CC_NO_CLOSE ; 
 unsigned int CC_USR1_TO_HUP ; 
 int SIGHUP ; 
 int SIGUSR1 ; 
 scalar_t__ SIG_SOURCE_HARD ; 
 int /*<<< orphan*/  FUNC1 (struct context*) ; 
 int /*<<< orphan*/  FUNC2 (struct context*) ; 

void
FUNC3(struct context *c, int sig, unsigned int flags)
{
    FUNC0(c);
    FUNC0(c->sig);

    if (sig >= 0)
    {
        c->sig->signal_received = sig;
    }

    if (c->sig->signal_received == SIGUSR1)
    {
        if ((flags & CC_USR1_TO_HUP)
            || (c->sig->source == SIG_SOURCE_HARD && (flags & CC_HARD_USR1_TO_HUP)))
        {
            c->sig->signal_received = SIGHUP;
            c->sig->signal_text = "close_context usr1 to hup";
        }
    }

    if (!(flags & CC_NO_CLOSE))
    {
        FUNC1(c);
    }

    if (flags & CC_GC_FREE)
    {
        FUNC2(c);
    }
}