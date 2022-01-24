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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  hugebuf ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,char**,size_t*,size_t*,int*,char const*,int /*<<< orphan*/ ) ; 

int FUNC3(BIO *bio, const char *format, va_list args)
{
    int ret;
    size_t retlen;
    char hugebuf[1024 * 2];     /* Was previously 10k, which is unreasonable
                                 * in small-stack environments, like threads
                                 * or DOS programs. */
    char *hugebufp = hugebuf;
    size_t hugebufsize = sizeof(hugebuf);
    char *dynbuf = NULL;
    int ignored;

    dynbuf = NULL;
    if (!FUNC2(&hugebufp, &dynbuf, &hugebufsize, &retlen, &ignored, format,
                args)) {
        FUNC1(dynbuf);
        return -1;
    }
    if (dynbuf) {
        ret = FUNC0(bio, dynbuf, (int)retlen);
        FUNC1(dynbuf);
    } else {
        ret = FUNC0(bio, hugebuf, (int)retlen);
    }
    return ret;
}