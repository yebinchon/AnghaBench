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
 int /*<<< orphan*/  WHITE_ON_BLACK ; 
 int FUNC0 () ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (char,int,int,int /*<<< orphan*/ ) ; 

void FUNC5(char *message, int col, int row) {
    /* Set cursor if col/row are negative */
    int offset;
    if (col >= 0 && row >= 0)
        offset = FUNC1(col, row);
    else {
        offset = FUNC0();
        row = FUNC3(offset);
        col = FUNC2(offset);
    }

    /* Loop through message and print it */
    int i = 0;
    while (message[i] != 0) {
        offset = FUNC4(message[i++], col, row, WHITE_ON_BLACK);
        /* Compute row/col for next iteration */
        row = FUNC3(offset);
        col = FUNC2(offset);
    }
}