
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int t ;
struct drbg_kat_pr_true {int retbytes; int addin2; int entropyinpr2; int addin1; int entropyinpr1; int persstr; int entropyin; int nonce; } ;
struct drbg_kat {int flags; int retbyteslen; int addinlen; int entropyinlen; int persstrlen; int noncelen; int nid; scalar_t__ t; } ;
struct TYPE_4__ {int entropylen; int entropy; int noncelen; int nonce; } ;
typedef TYPE_1__ TEST_CTX ;
typedef int RAND_DRBG ;


 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int ) ;
 unsigned int RAND_DRBG_FLAG_CTR_NO_DF ;
 unsigned int RAND_DRBG_FLAG_HMAC ;
 int RAND_DRBG_free (int *) ;
 int RAND_DRBG_generate (int *,unsigned char*,int ,int,int ,int ) ;
 int RAND_DRBG_instantiate (int *,int ,int ) ;
 int * RAND_DRBG_new (int ,unsigned int,int *) ;
 int RAND_DRBG_set_callbacks (int *,int ,int *,int ,int *) ;
 int RAND_DRBG_set_ex_data (int *,int ,TYPE_1__*) ;
 int RAND_DRBG_uninstantiate (int *) ;
 int TEST_mem_eq (int ,int ,unsigned char*,int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int USE_DF ;
 int USE_HMAC ;
 int app_data_index ;
 int kat_entropy ;
 int kat_nonce ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int single_kat_pr_true(const struct drbg_kat *td)
{
    struct drbg_kat_pr_true *data = (struct drbg_kat_pr_true *)td->t;
    RAND_DRBG *drbg = ((void*)0);
    unsigned char *buff = ((void*)0);
    unsigned int flags = 0;
    int failures = 0;
    TEST_CTX t;

    if ((td->flags & USE_DF) == 0)
        flags |= RAND_DRBG_FLAG_CTR_NO_DF;
    if ((td->flags & USE_HMAC) != 0)
        flags |= RAND_DRBG_FLAG_HMAC;

    if (!TEST_ptr(drbg = RAND_DRBG_new(td->nid, flags, ((void*)0))))
        return 0;

    if (!TEST_true(RAND_DRBG_set_callbacks(drbg, kat_entropy, ((void*)0),
                                           kat_nonce, ((void*)0)))) {
        failures++;
        goto err;
    }
    memset(&t, 0, sizeof(t));
    t.nonce = data->nonce;
    t.noncelen = td->noncelen;
    t.entropy = data->entropyin;
    t.entropylen = td->entropyinlen;
    RAND_DRBG_set_ex_data(drbg, app_data_index, &t);

    buff = OPENSSL_malloc(td->retbyteslen);
    if (buff == ((void*)0))
        goto err;

    if (!TEST_true(RAND_DRBG_instantiate(drbg, data->persstr, td->persstrlen)))
        failures++;

    t.entropy = data->entropyinpr1;
    t.entropylen = td->entropyinlen;

    if (!TEST_true(RAND_DRBG_generate(drbg, buff, td->retbyteslen, 1,
                                      data->addin1, td->addinlen)))
        failures++;

    t.entropy = data->entropyinpr2;
    t.entropylen = td->entropyinlen;

    if (!TEST_true(RAND_DRBG_generate(drbg, buff, td->retbyteslen, 1,
                                      data->addin2, td->addinlen))
        || !TEST_true(RAND_DRBG_uninstantiate(drbg))
        || !TEST_mem_eq(data->retbytes, td->retbyteslen, buff,
                        td->retbyteslen))
        failures++;

err:
    OPENSSL_free(buff);
    RAND_DRBG_uninstantiate(drbg);
    RAND_DRBG_free(drbg);
    return failures == 0;
}
