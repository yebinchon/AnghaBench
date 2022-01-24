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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 

__attribute__((used)) static int FUNC3(BIO *fp, const char *name, const unsigned char *buf,
                     size_t len, int off)
{
    size_t i;
    char str[128 + 1 + 4];

    if (buf == NULL)
        return 1;
    if (off > 0) {
        if (off > 128)
            off = 128;
        FUNC2(str, ' ', off);
        if (FUNC1(fp, str, off) <= 0)
            return 0;
    } else {
        off = 0;
    }

    if (FUNC0(fp, "%s", name) <= 0)
        return 0;

    for (i = 0; i < len; i++) {
        if ((i % 15) == 0) {
            str[0] = '\n';
            FUNC2(&(str[1]), ' ', off + 4);
            if (FUNC1(fp, str, off + 1 + 4) <= 0)
                return 0;
        }
        if (FUNC0(fp, "%02x%s", buf[i], ((i + 1) == len) ? "" : ":") <=
            0)
            return 0;
    }
    if (FUNC1(fp, "\n", 1) <= 0)
        return 0;

    return 1;
}