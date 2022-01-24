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
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (char*,char*,int,char const*,int) ; 

int FUNC2(char *buf, int length, const char *prompt,
                           int verify)
{
    char buff[BUFSIZ];
    int ret;

    ret =
        FUNC1(buf, buff, (length > BUFSIZ) ? BUFSIZ : length,
                        prompt, verify);
    FUNC0(buff, BUFSIZ);
    return ret;
}