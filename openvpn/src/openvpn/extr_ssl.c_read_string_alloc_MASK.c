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
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*,char*,int const) ; 
 int FUNC1 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int const) ; 

__attribute__((used)) static char *
FUNC5(struct buffer *buf)
{
    const int len = FUNC1(buf);
    char *str;

    if (len < 1)
    {
        return NULL;
    }
    str = (char *) FUNC4(len);
    FUNC2(str);
    if (!FUNC0(buf, str, len))
    {
        FUNC3(str);
        return NULL;
    }
    str[len-1] = '\0';
    return str;
}