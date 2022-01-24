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
 char processor ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(char proc_id)		// get processor id as 'char' from 'x0'
{

	while (processor != proc_id) {}	// wait to execute

	if (proc_id == 0) {				// only the master (processor id = 0) initialize uart

		FUNC0();

	}

	FUNC3("Hello, world! I am the Core ");
	FUNC2(proc_id + '0');		// add '0' (0x30) to converte to ascii
	FUNC3("\r\n");
	processor++;					// increment 'processor' to enable the next core to execute

	if (proc_id == 0) {

		while (1) {

			FUNC2(FUNC1());	// only the master echos the typed character through uart

		}

	} else {

		while (1) {}				// all the other cores in loop here

	}

}