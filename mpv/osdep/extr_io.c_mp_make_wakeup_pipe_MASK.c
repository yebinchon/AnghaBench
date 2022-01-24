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

/* Variables and functions */
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int FUNC0 (int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (int*) ; 

int FUNC2(int pipes[2])
{
    if (FUNC1(pipes) < 0)
        return -1;

    for (int i = 0; i < 2; i++) {
        int val = FUNC0(pipes[i], F_GETFL) | O_NONBLOCK;
        FUNC0(pipes[i], F_SETFL, val);
    }
    return 0;
}