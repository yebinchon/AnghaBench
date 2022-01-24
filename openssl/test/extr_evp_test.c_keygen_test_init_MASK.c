#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int skip; char* err; TYPE_1__* data; } ;
struct TYPE_10__ {int /*<<< orphan*/ * keyname; struct TYPE_10__* genctx; } ;
typedef  TYPE_1__ KEYGEN_TEST_DATA ;
typedef  TYPE_2__ EVP_TEST ;
typedef  TYPE_1__ EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int NID_undef ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(EVP_TEST *t, const char *alg)
{
    KEYGEN_TEST_DATA *data;
    EVP_PKEY_CTX *genctx;
    int nid = FUNC4(alg);

    if (nid == NID_undef) {
        nid = FUNC3(alg);
        if (nid == NID_undef)
            return 0;
    }

    if (!FUNC6(genctx = FUNC1(nid, NULL))) {
        /* assume algorithm disabled */
        t->skip = 1;
        return 1;
    }

    if (FUNC2(genctx) <= 0) {
        t->err = "KEYGEN_INIT_ERROR";
        goto err;
    }

    if (!FUNC6(data = FUNC5(sizeof(*data))))
        goto err;
    data->genctx = genctx;
    data->keyname = NULL;
    t->data = data;
    t->err = NULL;
    return 1;

err:
    FUNC0(genctx);
    return 0;
}