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
 char NUL ; 
 int TEMP_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static void
FUNC4(char *font, char *buf)
{
    char    buf1[TEMP_BUF_SIZE];
    char    buf2[TEMP_BUF_SIZE];

    *buf = '\0';

    FUNC0(font, 13, buf1);
    FUNC0(font, 14, buf2);

    if (*buf1 != NUL && *buf2 != NUL)
	FUNC3(buf, TEMP_BUF_SIZE, "%s-%s", buf1, buf2);
    if (!FUNC1(buf, " "))
	FUNC2(buf, "-");
}