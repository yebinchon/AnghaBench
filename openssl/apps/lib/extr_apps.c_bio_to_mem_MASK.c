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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_FLAGS_MEM_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char*,int) ; 

int FUNC7(unsigned char **out, int maxlen, BIO *in)
{
    BIO *mem;
    int len, ret;
    unsigned char tbuf[1024];

    mem = FUNC2(FUNC4());
    if (mem == NULL)
        return -1;
    for (;;) {
        if ((maxlen != -1) && maxlen < 1024)
            len = maxlen;
        else
            len = 1024;
        len = FUNC3(in, tbuf, len);
        if (len < 0) {
            FUNC0(mem);
            return -1;
        }
        if (len == 0)
            break;
        if (FUNC6(mem, tbuf, len) != len) {
            FUNC0(mem);
            return -1;
        }
        maxlen -= len;

        if (maxlen == 0)
            break;
    }
    ret = FUNC1(mem, (char **)out);
    FUNC5(mem, BIO_FLAGS_MEM_RDONLY);
    FUNC0(mem);
    return ret;
}