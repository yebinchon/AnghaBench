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
typedef  int /*<<< orphan*/  VOID ;
typedef  char* PCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

VOID FUNC2(PCSTR MessageText)
{
    // We have not yet displayed the user interface
    // We are probably still reading the .ini file
    // and have encountered an error. Just use printf()
    // and return.
    FUNC1("%s\n", MessageText);
    FUNC1("Press any key\n");
    FUNC0();
}