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
struct termios {int c_lflag; int* c_cc; } ;

/* Variables and functions */
 int ECHO ; 
 int ICANON ; 
 int /*<<< orphan*/  TCSANOW ; 
 size_t VMIN ; 
 size_t VTIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int getch2_active ; 
 int /*<<< orphan*/  read_terminal ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 
 struct termios tio_orig ; 
 int tio_orig_set ; 
 int /*<<< orphan*/  tty_in ; 

__attribute__((used)) static void FUNC3(void)
{
    if (getch2_active || !read_terminal)
        return;

    FUNC0(true);

    struct termios tio_new;
    FUNC1(tty_in,&tio_new);

    if (!tio_orig_set) {
        tio_orig = tio_new;
        tio_orig_set = 1;
    }

    tio_new.c_lflag &= ~(ICANON|ECHO); /* Clear ICANON and ECHO. */
    tio_new.c_cc[VMIN] = 1;
    tio_new.c_cc[VTIME] = 0;
    FUNC2(tty_in,TCSANOW,&tio_new);

    getch2_active = 1;
}