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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prev_driver ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  rn42_config_driver ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(void)
{
    prev_driver = FUNC2();
    FUNC1();
    FUNC3(&rn42_config_driver);   // null driver; not to send a key to host
    FUNC5();
    while (FUNC6()) ;

    FUNC4("Entering config mode ...\n");
    FUNC9(1100);          // need 1 sec
    FUNC0("$$$");
    FUNC9(600);           // need 1 sec
    FUNC7();
    const char *s = FUNC0("v\r\n");
    if (FUNC8("v", s, 1) != 0) FUNC0("+\r\n"); // local echo on
}