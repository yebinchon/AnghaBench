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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPENSSL_CONF ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

char *FUNC6(void)
{
    char *file, *sep = "";
    int len;

    if ((file = FUNC4("OPENSSL_CONF")) != NULL)
        return FUNC2(file);

    len = FUNC5(FUNC3());
#ifndef OPENSSL_SYS_VMS
    len++;
    sep = "/";
#endif
    len += FUNC5(OPENSSL_CONF);

    file = FUNC1(len + 1);

    if (file == NULL)
        return NULL;
    FUNC0(file, len + 1, "%s%s%s", FUNC3(),
                 sep, OPENSSL_CONF);

    return file;
}