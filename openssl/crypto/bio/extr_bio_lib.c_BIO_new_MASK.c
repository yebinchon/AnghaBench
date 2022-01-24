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
struct TYPE_11__ {int shutdown; int references; int init; int /*<<< orphan*/ * lock; int /*<<< orphan*/  ex_data; TYPE_1__ const* method; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* create ) (TYPE_2__*) ;} ;
typedef  TYPE_1__ BIO_METHOD ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_F_BIO_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRYPTO_EX_INDEX_BIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_INIT_FAIL ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

BIO *FUNC8(const BIO_METHOD *method)
{
    BIO *bio = FUNC6(sizeof(*bio));

    if (bio == NULL) {
        FUNC0(BIO_F_BIO_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    bio->method = method;
    bio->shutdown = 1;
    bio->references = 1;

    if (!FUNC4(CRYPTO_EX_INDEX_BIO, bio, &bio->ex_data))
        goto err;

    bio->lock = FUNC2();
    if (bio->lock == NULL) {
        FUNC0(BIO_F_BIO_NEW, ERR_R_MALLOC_FAILURE);
        FUNC3(CRYPTO_EX_INDEX_BIO, bio, &bio->ex_data);
        goto err;
    }

    if (method->create != NULL && !method->create(bio)) {
        FUNC0(BIO_F_BIO_NEW, ERR_R_INIT_FAIL);
        FUNC3(CRYPTO_EX_INDEX_BIO, bio, &bio->ex_data);
        FUNC1(bio->lock);
        goto err;
    }
    if (method->create == NULL)
        bio->init = 1;

    return bio;

err:
    FUNC5(bio);
    return NULL;
}