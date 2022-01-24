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
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,...) ; 

__attribute__((used)) static void
FUNC2(char *font, char *buf)
{
    char    buf2[TEMP_BUF_SIZE];
    char    buf3[TEMP_BUF_SIZE];

    FUNC0(font, 2, buf2);
    FUNC0(font, 1, buf3);

    if (*buf3 != NUL)
	FUNC1(buf, TEMP_BUF_SIZE, "%s (%s)", buf2, buf3);
    else
	FUNC1(buf, TEMP_BUF_SIZE, "%s", buf2);
}