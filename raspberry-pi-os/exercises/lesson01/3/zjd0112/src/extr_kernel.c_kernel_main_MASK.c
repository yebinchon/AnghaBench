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
 int /*<<< orphan*/  FUNC0 () ; 
 char FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 unsigned int semaphore ; 

void FUNC4(unsigned int proc_id)
{
    if (proc_id == 0)
    {
        FUNC0();
    }

    while (semaphore != proc_id)
    {
        ;
    }

    // semaphore = 1;
    FUNC3("Hello, world from processor ");
    FUNC2((char)(proc_id + '0'));
    FUNC3("\r\n");
    semaphore++;

    if (proc_id == 0)
    {
        while (1)
        {
            FUNC2(FUNC1());
        }
    }
}