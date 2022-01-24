#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ (* init ) (TYPE_1__*) ;} ;
struct TYPE_10__ {int references; int version; TYPE_6__* meth; int /*<<< orphan*/  ex_data; int /*<<< orphan*/  conv_form; int /*<<< orphan*/ * engine; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * libctx; } ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  int /*<<< orphan*/  ENGINE ;
typedef  TYPE_1__ EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_EC_KEY ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_EC_KEY_NEW_METHOD_INT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_6__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_ENGINE_LIB ; 
 int /*<<< orphan*/  ERR_R_INIT_FAIL ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int) ; 
 int /*<<< orphan*/  POINT_CONVERSION_UNCOMPRESSED ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 

EC_KEY *FUNC11(OPENSSL_CTX *libctx, ENGINE *engine)
{
    EC_KEY *ret = FUNC9(sizeof(*ret));

    if (ret == NULL) {
        FUNC4(EC_F_EC_KEY_NEW_METHOD_INT, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    ret->libctx = libctx;

    ret->references = 1;
    ret->lock = FUNC0();
    if (ret->lock == NULL) {
        FUNC4(EC_F_EC_KEY_NEW_METHOD_INT, ERR_R_MALLOC_FAILURE);
        FUNC8(ret);
        return NULL;
    }

    ret->meth = FUNC3();
#if !defined(OPENSSL_NO_ENGINE) && !defined(FIPS_MODE)
    if (engine != NULL) {
        if (!FUNC7(engine)) {
            FUNC4(EC_F_EC_KEY_NEW_METHOD_INT, ERR_R_ENGINE_LIB);
            goto err;
        }
        ret->engine = engine;
    } else
        ret->engine = FUNC6();
    if (ret->engine != NULL) {
        ret->meth = FUNC5(ret->engine);
        if (ret->meth == NULL) {
            FUNC4(EC_F_EC_KEY_NEW_METHOD_INT, ERR_R_ENGINE_LIB);
            goto err;
        }
    }
#endif

    ret->version = 1;
    ret->conv_form = POINT_CONVERSION_UNCOMPRESSED;

/* No ex_data inside the FIPS provider */
#ifndef FIPS_MODE
    if (!FUNC1(CRYPTO_EX_INDEX_EC_KEY, ret, &ret->ex_data)) {
        goto err;
    }
#endif

    if (ret->meth->init != NULL && ret->meth->init(ret) == 0) {
        FUNC4(EC_F_EC_KEY_NEW_METHOD_INT, ERR_R_INIT_FAIL);
        goto err;
    }
    return ret;

 err:
    FUNC2(ret);
    return NULL;
}