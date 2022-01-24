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
 int STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int tty_in ; 
 int tty_out ; 

__attribute__((used)) static void FUNC1(void)
{
    if (tty_in >= 0 && tty_in != STDIN_FILENO)
        FUNC0(tty_in);

    tty_in = tty_out = -1;
}