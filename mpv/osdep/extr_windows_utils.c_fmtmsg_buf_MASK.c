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
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_MORE_DATA ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,size_t) ; 

__attribute__((used)) static char *FUNC3(char *buf, size_t buf_size, DWORD errorID)
{
    DWORD n = FUNC0(FORMAT_MESSAGE_FROM_SYSTEM |
                             FORMAT_MESSAGE_IGNORE_INSERTS,
                             NULL, errorID, 0, buf, buf_size, NULL);
    if (!n && FUNC1() == ERROR_MORE_DATA) {
        FUNC2(buf, buf_size,
                 "<Insufficient buffer size (%zd) for error message>",
                 buf_size);
    } else {
        if (n > 0 && buf[n-1] == '\n')
            buf[n-1] = '\0';
        if (n > 1 && buf[n-2] == '\r')
            buf[n-2] = '\0';
    }
    return buf;
}