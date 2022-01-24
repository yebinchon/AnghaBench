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
 int /*<<< orphan*/  U_DATA_REG ; 
 int /*<<< orphan*/  U_FR_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

char FUNC1 ()
{
	// wait for receive FIFO to have data to read
	while(FUNC0(U_FR_REG) & (1<<4)) { }

	return(FUNC0(U_DATA_REG) & 0xFF);
}