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
 char* OPENSSL_FULL_VERSION_STR ; 
 int /*<<< orphan*/  OPENSSL_FULL_VERSION_STRING ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

int FUNC2(void)
{
    FUNC1("Build version: %s\n", OPENSSL_FULL_VERSION_STR);
    FUNC1("Library version: %s\n",
           FUNC0(OPENSSL_FULL_VERSION_STRING));
    return 0;
}