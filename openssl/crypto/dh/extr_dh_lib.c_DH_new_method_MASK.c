#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  (* init ) (TYPE_1__*) ;int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {int references; TYPE_5__* meth; int /*<<< orphan*/  ex_data; int /*<<< orphan*/  flags; int /*<<< orphan*/ * engine; int /*<<< orphan*/ * lock; } ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  TYPE_1__ DH ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_DH ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DH_F_DH_NEW_METHOD ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_5__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_ENGINE_LIB ; 
 int /*<<< orphan*/  ERR_R_INIT_FAIL ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

DH *FUNC11(ENGINE *engine)
{
    DH *ret = FUNC9(sizeof(*ret));

    if (ret == NULL) {
        FUNC4(DH_F_DH_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    ret->references = 1;
    ret->lock = FUNC0();
    if (ret->lock == NULL) {
        FUNC4(DH_F_DH_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        FUNC8(ret);
        return NULL;
    }

    ret->meth = FUNC3();
#ifndef OPENSSL_NO_ENGINE
    ret->flags = ret->meth->flags;  /* early default init */
    if (engine) {
        if (!FUNC7(engine)) {
            FUNC4(DH_F_DH_NEW_METHOD, ERR_R_ENGINE_LIB);
            goto err;
        }
        ret->engine = engine;
    } else
        ret->engine = FUNC6();
    if (ret->engine) {
        ret->meth = FUNC5(ret->engine);
        if (ret->meth == NULL) {
            FUNC4(DH_F_DH_NEW_METHOD, ERR_R_ENGINE_LIB);
            goto err;
        }
    }
#endif

    ret->flags = ret->meth->flags;

    if (!FUNC1(CRYPTO_EX_INDEX_DH, ret, &ret->ex_data))
        goto err;

    if ((ret->meth->init != NULL) && !ret->meth->init(ret)) {
        FUNC4(DH_F_DH_NEW_METHOD, ERR_R_INIT_FAIL);
        goto err;
    }

    return ret;

 err:
    FUNC2(ret);
    return NULL;
}