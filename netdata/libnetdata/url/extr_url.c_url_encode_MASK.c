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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 void* FUNC5 (char) ; 

char *FUNC6(char *str) {
    char *buf, *pbuf;

    pbuf = buf = FUNC2(FUNC4(str) * 3 + 1);

    while (*str) {
        if (FUNC1(*str) || *str == '-' || *str == '_' || *str == '.' || *str == '~')
            *pbuf++ = *str;

        else if (*str == ' ')
            *pbuf++ = '+';

        else
            *pbuf++ = '%', *pbuf++ = FUNC5(*str >> 4), *pbuf++ = FUNC5(*str & 15);

        str++;
    }
    *pbuf = '\0';

    pbuf = FUNC3(buf);
    FUNC0(buf);
    return pbuf;
}