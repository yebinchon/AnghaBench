
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ex_data; int num; int flags; int shutdown; int init; int cb_arg; int callback_ex; int callback; int method; struct TYPE_10__* next_bio; } ;
typedef TYPE_1__ BIO ;


 int BIO_dup_state (TYPE_1__*,char*) ;
 int BIO_free (TYPE_1__*) ;
 int BIO_free_all (TYPE_1__*) ;
 TYPE_1__* BIO_new (int ) ;
 int BIO_push (TYPE_1__*,TYPE_1__*) ;
 int CRYPTO_EX_INDEX_BIO ;
 int CRYPTO_dup_ex_data (int ,int *,int *) ;

BIO *BIO_dup_chain(BIO *in)
{
    BIO *ret = ((void*)0), *eoc = ((void*)0), *bio, *new_bio;

    for (bio = in; bio != ((void*)0); bio = bio->next_bio) {
        if ((new_bio = BIO_new(bio->method)) == ((void*)0))
            goto err;
        new_bio->callback = bio->callback;
        new_bio->callback_ex = bio->callback_ex;
        new_bio->cb_arg = bio->cb_arg;
        new_bio->init = bio->init;
        new_bio->shutdown = bio->shutdown;
        new_bio->flags = bio->flags;


        new_bio->num = bio->num;

        if (!BIO_dup_state(bio, (char *)new_bio)) {
            BIO_free(new_bio);
            goto err;
        }


        if (!CRYPTO_dup_ex_data(CRYPTO_EX_INDEX_BIO, &new_bio->ex_data,
                                &bio->ex_data)) {
            BIO_free(new_bio);
            goto err;
        }

        if (ret == ((void*)0)) {
            eoc = new_bio;
            ret = eoc;
        } else {
            BIO_push(eoc, new_bio);
            eoc = new_bio;
        }
    }
    return ret;
 err:
    BIO_free_all(ret);

    return ((void*)0);
}
