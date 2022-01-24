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
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 unsigned char EVT_ACQUIRE ; 
 unsigned char EVT_RELEASE ; 
 int RELEASE_SIGNAL ; 
 int /*<<< orphan*/ * vt_switcher_pipe ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static void FUNC1(int sig)
{
    unsigned char event = sig == RELEASE_SIGNAL ? EVT_RELEASE : EVT_ACQUIRE;
    (void)FUNC0(vt_switcher_pipe[1], &event, sizeof(event));
}