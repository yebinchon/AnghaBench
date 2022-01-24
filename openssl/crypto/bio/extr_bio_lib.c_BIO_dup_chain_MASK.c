#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ex_data; int /*<<< orphan*/  num; int /*<<< orphan*/  flags; int /*<<< orphan*/  shutdown; int /*<<< orphan*/  init; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  callback_ex; int /*<<< orphan*/  callback; int /*<<< orphan*/  method; struct TYPE_10__* next_bio; } ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  CRYPTO_EX_INDEX_BIO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BIO *FUNC6(BIO *in)
{
    BIO *ret = NULL, *eoc = NULL, *bio, *new_bio;

    for (bio = in; bio != NULL; bio = bio->next_bio) {
        if ((new_bio = FUNC3(bio->method)) == NULL)
            goto err;
        new_bio->callback = bio->callback;
        new_bio->callback_ex = bio->callback_ex;
        new_bio->cb_arg = bio->cb_arg;
        new_bio->init = bio->init;
        new_bio->shutdown = bio->shutdown;
        new_bio->flags = bio->flags;

        /* This will let SSL_s_sock() work with stdin/stdout */
        new_bio->num = bio->num;

        if (!FUNC0(bio, (char *)new_bio)) {
            FUNC1(new_bio);
            goto err;
        }

        /* copy app data */
        if (!FUNC5(CRYPTO_EX_INDEX_BIO, &new_bio->ex_data,
                                &bio->ex_data)) {
            FUNC1(new_bio);
            goto err;
        }

        if (ret == NULL) {
            eoc = new_bio;
            ret = eoc;
        } else {
            FUNC4(eoc, new_bio);
            eoc = new_bio;
        }
    }
    return ret;
 err:
    FUNC2(ret);

    return NULL;
}