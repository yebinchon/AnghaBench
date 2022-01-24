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
struct TYPE_3__ {char* err; int skip; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int NID_undef ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,char) ; 

__attribute__((used)) static int FUNC9(EVP_TEST *t, EVP_PKEY_CTX *pctx,
                          const char *value)
{
    int rv;
    char *p, *tmpval;

    if (!FUNC7(tmpval = FUNC6(value)))
        return 0;
    p = FUNC8(tmpval, ':');
    if (p != NULL)
        *p++ = '\0';
    rv = FUNC0(pctx, tmpval, p);
    if (rv == -2) {
        t->err = "PKEY_CTRL_INVALID";
        rv = 1;
    } else if (p != NULL && rv <= 0) {
        /* If p has an OID and lookup fails assume disabled algorithm */
        int nid = FUNC4(p);

        if (nid == NID_undef)
             nid = FUNC3(p);
        if (nid != NID_undef
                && FUNC2(nid) == NULL
                && FUNC1(nid) == NULL) {
            t->skip = 1;
            rv = 1;
        } else {
            t->err = "PKEY_CTRL_ERROR";
            rv = 1;
        }
    }
    FUNC5(tmpval);
    return rv > 0;
}