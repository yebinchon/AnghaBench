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
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 unsigned int FUNC3 (char const*) ; 

__attribute__((used)) static inline void FUNC4(char **buf, unsigned *buf_size, const char *str)
{
    unsigned str_len, buf_len;

    str_len = FUNC3(str);
    buf_len = FUNC3(*buf);

    if(str_len+buf_len >= *buf_size) {
        *buf_size += buf_len + str_len;
        *buf = FUNC1(FUNC0(), 0, *buf, *buf_size);
    }

    FUNC2(*buf+buf_len, str);
}