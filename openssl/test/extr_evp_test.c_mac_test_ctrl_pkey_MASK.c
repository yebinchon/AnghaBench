#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* err; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static int FUNC5(EVP_TEST *t, EVP_PKEY_CTX *pctx,
                              const char *value)
{
    int rv;
    char *p, *tmpval;

    if (!FUNC3(tmpval = FUNC2(value)))
        return 0;
    p = FUNC4(tmpval, ':');
    if (p != NULL)
        *p++ = '\0';
    rv = FUNC0(pctx, tmpval, p);
    if (rv == -2)
        t->err = "PKEY_CTRL_INVALID";
    else if (rv <= 0)
        t->err = "PKEY_CTRL_ERROR";
    else
        rv = 1;
    FUNC1(tmpval);
    return rv > 0;
}