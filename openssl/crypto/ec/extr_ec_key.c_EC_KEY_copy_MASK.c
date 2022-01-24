#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_2__* meth; int /*<<< orphan*/ * engine; int /*<<< orphan*/  ex_data; int /*<<< orphan*/  flags; int /*<<< orphan*/  version; int /*<<< orphan*/  conv_form; int /*<<< orphan*/  enc_flag; TYPE_10__* group; int /*<<< orphan*/ * priv_key; int /*<<< orphan*/ * pub_key; int /*<<< orphan*/  libctx; } ;
struct TYPE_21__ {scalar_t__ (* copy ) (TYPE_3__*,TYPE_3__ const*) ;int /*<<< orphan*/  (* finish ) (TYPE_3__*) ;} ;
struct TYPE_20__ {scalar_t__ (* keycopy ) (TYPE_3__*,TYPE_3__ const*) ;int /*<<< orphan*/  (* keyfinish ) (TYPE_3__*) ;} ;
struct TYPE_19__ {TYPE_1__* meth; } ;
typedef  int /*<<< orphan*/  EC_METHOD ;
typedef  TYPE_3__ EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  CRYPTO_EX_INDEX_EC_KEY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_EC_KEY_COPY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_10__*) ; 
 TYPE_10__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 scalar_t__ FUNC15 (TYPE_3__*,TYPE_3__ const*) ; 
 scalar_t__ FUNC16 (TYPE_3__*,TYPE_3__ const*) ; 

EC_KEY *FUNC17(EC_KEY *dest, const EC_KEY *src)
{
    if (dest == NULL || src == NULL) {
        FUNC10(EC_F_EC_KEY_COPY, ERR_R_PASSED_NULL_PARAMETER);
        return NULL;
    }
    if (src->meth != dest->meth) {
        if (dest->meth->finish != NULL)
            dest->meth->finish(dest);
        if (dest->group && dest->group->meth->keyfinish)
            dest->group->meth->keyfinish(dest);
#if !defined(OPENSSL_NO_ENGINE) && !defined(FIPS_MODE)
        if (FUNC11(dest->engine) == 0)
            return 0;
        dest->engine = NULL;
#endif
    }
    dest->libctx = src->libctx;
    /* copy the parameters */
    if (src->group != NULL) {
        const EC_METHOD *meth = FUNC5(src->group);
        /* clear the old group */
        FUNC4(dest->group);
        dest->group = FUNC6(src->libctx, meth);
        if (dest->group == NULL)
            return NULL;
        if (!FUNC3(dest->group, src->group))
            return NULL;

        /*  copy the public key */
        if (src->pub_key != NULL) {
            FUNC8(dest->pub_key);
            dest->pub_key = FUNC9(src->group);
            if (dest->pub_key == NULL)
                return NULL;
            if (!FUNC7(dest->pub_key, src->pub_key))
                return NULL;
        }
        /* copy the private key */
        if (src->priv_key != NULL) {
            if (dest->priv_key == NULL) {
                dest->priv_key = FUNC1();
                if (dest->priv_key == NULL)
                    return NULL;
            }
            if (!FUNC0(dest->priv_key, src->priv_key))
                return NULL;
            if (src->group->meth->keycopy
                && src->group->meth->keycopy(dest, src) == 0)
                return NULL;
        }
    }


    /* copy the rest */
    dest->enc_flag = src->enc_flag;
    dest->conv_form = src->conv_form;
    dest->version = src->version;
    dest->flags = src->flags;
#ifndef FIPS_MODE
    if (!FUNC2(CRYPTO_EX_INDEX_EC_KEY,
                            &dest->ex_data, &src->ex_data))
        return NULL;
#endif

    if (src->meth != dest->meth) {
#if !defined(OPENSSL_NO_ENGINE) && !defined(FIPS_MODE)
        if (src->engine != NULL && FUNC12(src->engine) == 0)
            return NULL;
        dest->engine = src->engine;
#endif
        dest->meth = src->meth;
    }

    if (src->meth->copy != NULL && src->meth->copy(dest, src) == 0)
        return NULL;

    return dest;
}