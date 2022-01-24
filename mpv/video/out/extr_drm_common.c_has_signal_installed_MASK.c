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
struct sigaction {scalar_t__ sa_handler; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct sigaction*) ; 

__attribute__((used)) static bool FUNC1(int signo)
{
    struct sigaction act = { 0 };
    FUNC0(signo, 0, &act);
    return act.sa_handler != 0;
}