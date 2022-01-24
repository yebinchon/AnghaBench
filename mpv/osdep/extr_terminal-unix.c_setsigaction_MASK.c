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
struct sigaction {void (* sa_handler ) (int) ;int sa_flags; int /*<<< orphan*/  sa_mask; } ;

/* Variables and functions */
 int SA_RESTART ; 
 int FUNC0 (int,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(int signo, void (*handler) (int),
                        int flags, bool do_mask)
{
    struct sigaction sa;
    sa.sa_handler = handler;

    if(do_mask)
        FUNC2(&sa.sa_mask);
    else
        FUNC1(&sa.sa_mask);

    sa.sa_flags = flags | SA_RESTART;
    return FUNC0(signo, &sa, NULL);
}