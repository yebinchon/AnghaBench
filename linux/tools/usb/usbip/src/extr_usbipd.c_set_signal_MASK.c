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
struct sigaction {int /*<<< orphan*/  sa_handler; int /*<<< orphan*/  sa_mask; } ;
typedef  int /*<<< orphan*/  act ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC0 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  signal_handler ; 

__attribute__((used)) static void FUNC3(void)
{
	struct sigaction act;

	FUNC0(&act, 0, sizeof(act));
	act.sa_handler = signal_handler;
	FUNC2(&act.sa_mask);
	FUNC1(SIGTERM, &act, NULL);
	FUNC1(SIGINT, &act, NULL);
	act.sa_handler = SIG_IGN;
	FUNC1(SIGCHLD, &act, NULL);
}