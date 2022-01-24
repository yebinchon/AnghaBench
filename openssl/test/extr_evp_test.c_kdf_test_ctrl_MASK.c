#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* err; int skip; TYPE_1__* data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * p; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_1__ KDF_DATA ;
typedef  TYPE_2__ EVP_TEST ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int NID_undef ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*,char) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static int FUNC14(EVP_TEST *t, EVP_KDF_CTX *kctx,
                         const char *value)
{
    KDF_DATA *kdata = t->data;
    int rv;
    char *p, *name;
    const OSSL_PARAM *defs = FUNC1(FUNC0(kctx));

    if (!FUNC10(name = FUNC7(value)))
        return 0;
    p = FUNC11(name, ':');
    if (p != NULL)
        *p++ = '\0';

    rv = FUNC8(kdata->p, defs, name, p,
                                       p != NULL ? FUNC13(p) : 0);
    *++kdata->p = FUNC9();
    if (!rv) {
        t->err = "KDF_PARAM_ERROR";
        FUNC6(name);
        return 0;
    }
    if (p != NULL && FUNC12(name, "digest") == 0) {
        /* If p has an OID and lookup fails assume disabled algorithm */
        int nid = FUNC5(p);

        if (nid == NID_undef)
             nid = FUNC4(p);
        if (nid != NID_undef && FUNC3(nid) == NULL)
            t->skip = 1;
    }
    if (p != NULL && FUNC12(name, "cipher") == 0) {
        /* If p has an OID and lookup fails assume disabled algorithm */
        int nid = FUNC5(p);

        if (nid == NID_undef)
             nid = FUNC4(p);
        if (nid != NID_undef && FUNC2(nid) == NULL)
            t->skip = 1;
    }
    FUNC6(name);
    return 1;
}