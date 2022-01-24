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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static char *FUNC5(BIO *f)
{
    static char buf[1024];
    int n;

    if (!FUNC0(f, buf, sizeof(buf)))
        return NULL;

    n = FUNC4(buf);
    if (buf[n - 1] != '\n') {
        if (n + 1 == sizeof(buf))
            FUNC1("input too long");
        else
            FUNC1("EOF before newline");
        return NULL;
    }

    /* Trim trailing whitespace */
    while (n > 0 && FUNC3(FUNC2(buf[n - 1])))
        buf[--n] = '\0';

    return buf;
}