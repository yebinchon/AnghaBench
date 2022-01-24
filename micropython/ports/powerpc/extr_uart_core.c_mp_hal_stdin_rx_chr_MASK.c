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
 scalar_t__ lpc_console ; 
 unsigned char FUNC0 () ; 
 scalar_t__ potato_console ; 
 unsigned char FUNC1 () ; 

int FUNC2(void) {
    unsigned char c = 0;
    if (lpc_console) {
        c = FUNC0();
    } else if (potato_console) {
        c = FUNC1();
    }
    return c;
}