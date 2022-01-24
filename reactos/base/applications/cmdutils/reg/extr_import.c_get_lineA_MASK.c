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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 size_t REG_VAL_BUF_SIZE ; 
 size_t FUNC1 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 char* FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 size_t FUNC6 (char*) ; 
 char* FUNC7 (char*,char*) ; 

__attribute__((used)) static WCHAR *FUNC8(FILE *fp)
{
    static WCHAR *lineW;
    static size_t size;
    static char *buf, *next;
    char *line;

    FUNC2(lineW);

    if (!fp) goto cleanup;

    if (!size)
    {
        size = REG_VAL_BUF_SIZE;
        buf = FUNC3(size);
        *buf = 0;
        next = buf;
    }
    line = next;

    while (next)
    {
        char *p = FUNC7(line, "\r\n");
        if (!p)
        {
            size_t len, count;
            len = FUNC6(next);
            FUNC5(buf, next, len + 1);
            if (size - len < 3)
            {
                size *= 2;
                buf = FUNC4(buf, size);
            }
            if (!(count = FUNC1(buf + len, 1, size - len - 1, fp)))
            {
                next = NULL;
                lineW = FUNC0(buf);
                return lineW;
            }
            buf[len + count] = 0;
            next = buf;
            line = buf;
            continue;
        }
        next = p + 1;
        if (*p == '\r' && *(p + 1) == '\n') next++;
        *p = 0;
        lineW = FUNC0(line);
        return lineW;
    }

cleanup:
    lineW = NULL;
    if (size) FUNC2(buf);
    size = 0;
    return NULL;
}