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
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int /*<<< orphan*/ ) ; 

void FUNC4() {
    int offset = FUNC0()-2;
    int row = FUNC2(offset);
    int col = FUNC1(offset);
    FUNC3(0x08, col, row, WHITE_ON_BLACK);
}