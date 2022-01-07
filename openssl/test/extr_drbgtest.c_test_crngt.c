
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct s_drgb_types {int flags; int nid; } ;
typedef int buff ;
struct TYPE_14__ {int min_entropylen; } ;
typedef TYPE_1__ RAND_DRBG ;
typedef TYPE_1__ OPENSSL_CTX ;


 int CRNGT_BUFSIZ ;
 int OPENSSL_CTX_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_CTX_new () ;
 int RAND_DRBG_free (TYPE_1__*) ;
 int RAND_DRBG_generate (TYPE_1__*,unsigned char*,int,int ,int *,int ) ;
 int RAND_DRBG_instantiate (TYPE_1__*,int *,int ) ;
 TYPE_1__* RAND_DRBG_new_ex (TYPE_1__*,int ,int ,int *) ;
 int RAND_DRBG_reseed (TYPE_1__*,int *,int ,int ) ;
 int RAND_DRBG_set_callbacks (TYPE_1__*,int *,int *,int *,int *) ;
 int TEST_int_eq (int ,int) ;
 int TEST_note (char*,int,size_t,scalar_t__) ;
 int TEST_ptr (TYPE_1__*) ;
 int TEST_true (int ) ;
 size_t crngt_case ;
 int crngt_entropy_cb ;
 int * crngt_get_entropy ;
 scalar_t__ crngt_idx ;
 int crngt_num_cases ;
 struct s_drgb_types* drgb_types ;
 int rand_crngt_cleanup_entropy ;
 int rand_crngt_get_entropy ;
 int rand_crngt_get_entropy_cb ;
 int rand_drbg_cleanup_nonce ;
 int rand_drbg_get_nonce ;
 int uninstantiate (TYPE_1__*) ;

__attribute__((used)) static int test_crngt(int n)
{
    const struct s_drgb_types *dt = drgb_types + n / crngt_num_cases;
    RAND_DRBG *drbg = ((void*)0);
    unsigned char buff[100];
    size_t ent;
    int res = 0;
    int expect;
    OPENSSL_CTX *ctx = OPENSSL_CTX_new();

    if (!TEST_ptr(ctx))
        return 0;
    if (!TEST_ptr(drbg = RAND_DRBG_new_ex(ctx, dt->nid, dt->flags, ((void*)0))))
        goto err;
    ent = (drbg->min_entropylen + CRNGT_BUFSIZ - 1) / CRNGT_BUFSIZ;
    crngt_case = n % crngt_num_cases;
    crngt_idx = 0;
    crngt_get_entropy = &crngt_entropy_cb;

    if (!TEST_true(RAND_DRBG_set_callbacks(drbg, &rand_crngt_get_entropy,
                                           &rand_crngt_cleanup_entropy,
                                           &rand_drbg_get_nonce,
                                           &rand_drbg_cleanup_nonce)))
        goto err;

    expect = crngt_case == 0 || crngt_case > ent;
    if (!TEST_int_eq(RAND_DRBG_instantiate(drbg, ((void*)0), 0), expect))
        goto err;
    if (!expect)
        goto fin;
    if (!TEST_true(RAND_DRBG_generate(drbg, buff, sizeof(buff), 0, ((void*)0), 0)))
        goto err;

    expect = crngt_case == 0 || crngt_case > 2 * ent;
    if (!TEST_int_eq(RAND_DRBG_reseed(drbg, ((void*)0), 0, 0), expect))
        goto err;
    if (!expect)
        goto fin;
    if (!TEST_true(RAND_DRBG_generate(drbg, buff, sizeof(buff), 0, ((void*)0), 0)))
        goto err;

fin:
    res = 1;
err:
    if (!res)
        TEST_note("DRBG %zd case %zd block %zd", n / crngt_num_cases,
                  crngt_case, crngt_idx);
    uninstantiate(drbg);
    RAND_DRBG_free(drbg);
    crngt_get_entropy = &rand_crngt_get_entropy_cb;
    OPENSSL_CTX_free(ctx);
    return res;
}
