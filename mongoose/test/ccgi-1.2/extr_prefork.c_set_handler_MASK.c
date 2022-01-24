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
struct sigaction {void (* sa_handler ) (int) ;int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; } ;

/* Variables and functions */
 int FUNC0 (int,struct sigaction*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(int sig, void (*handler)(int sig)) {
    struct sigaction action;
    action.sa_handler = handler;
    action.sa_flags = 0;
    FUNC1(&action.sa_mask);
    return FUNC0(sig, &action, 0);
}