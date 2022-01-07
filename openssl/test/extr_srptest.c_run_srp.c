
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int rand_tmp ;
struct TYPE_4__ {int * N; int * g; } ;
typedef TYPE_1__ SRP_gN ;
typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char*,int,int *) ;
 int BN_clear_free (int *) ;
 int BN_free (int *) ;
 int RANDOM_SIZE ;
 int RAND_bytes (unsigned char*,int) ;
 int * SRP_Calc_A (int *,int *,int *) ;
 int * SRP_Calc_B (int *,int *,int *,int *) ;
 int * SRP_Calc_client_key (int *,int *,int *,int *,int *,int *) ;
 int * SRP_Calc_server_key (int *,int *,int *,int *,int *) ;
 int * SRP_Calc_u (int *,int *,int *) ;
 int * SRP_Calc_x (int *,char const*,char const*) ;
 int SRP_Verify_A_mod_N (int *,int *) ;
 int SRP_Verify_B_mod_N (int *,int *) ;
 int SRP_create_verifier_BN (char const*,char const*,int **,int **,int *,int *) ;
 TYPE_1__* SRP_get_default_gN (char*) ;
 int TEST_BN_eq (int *,int *) ;
 int TEST_BN_ne_zero (int *) ;
 int TEST_ptr (TYPE_1__ const*) ;
 int TEST_true (int ) ;
 int test_output_bignum (char*,int *) ;

__attribute__((used)) static int run_srp(const char *username, const char *client_pass,
                   const char *server_pass)
{
    int ret = 0;
    BIGNUM *s = ((void*)0);
    BIGNUM *v = ((void*)0);
    BIGNUM *a = ((void*)0);
    BIGNUM *b = ((void*)0);
    BIGNUM *u = ((void*)0);
    BIGNUM *x = ((void*)0);
    BIGNUM *Apub = ((void*)0);
    BIGNUM *Bpub = ((void*)0);
    BIGNUM *Kclient = ((void*)0);
    BIGNUM *Kserver = ((void*)0);
    unsigned char rand_tmp[RANDOM_SIZE];

    const SRP_gN *GN;

    if (!TEST_ptr(GN = SRP_get_default_gN("1024")))
        return 0;


    if (!TEST_true(SRP_create_verifier_BN(username, server_pass,
                                          &s, &v, GN->N, GN->g)))
        goto end;

    test_output_bignum("N", GN->N);
    test_output_bignum("g", GN->g);
    test_output_bignum("Salt", s);
    test_output_bignum("Verifier", v);


    RAND_bytes(rand_tmp, sizeof(rand_tmp));
    b = BN_bin2bn(rand_tmp, sizeof(rand_tmp), ((void*)0));
    if (!TEST_BN_ne_zero(b))
        goto end;
    test_output_bignum("b", b);


    Bpub = SRP_Calc_B(b, GN->N, GN->g, v);
    test_output_bignum("B", Bpub);

    if (!TEST_true(SRP_Verify_B_mod_N(Bpub, GN->N)))
        goto end;


    RAND_bytes(rand_tmp, sizeof(rand_tmp));
    a = BN_bin2bn(rand_tmp, sizeof(rand_tmp), ((void*)0));
    if (!TEST_BN_ne_zero(a))
        goto end;
    test_output_bignum("a", a);


    Apub = SRP_Calc_A(a, GN->N, GN->g);
    test_output_bignum("A", Apub);

    if (!TEST_true(SRP_Verify_A_mod_N(Apub, GN->N)))
        goto end;


    u = SRP_Calc_u(Apub, Bpub, GN->N);


    x = SRP_Calc_x(s, username, client_pass);
    Kclient = SRP_Calc_client_key(GN->N, Bpub, GN->g, x, a, u);
    test_output_bignum("Client's key", Kclient);


    Kserver = SRP_Calc_server_key(Apub, v, u, b, GN->N);
    test_output_bignum("Server's key", Kserver);

    if (!TEST_BN_eq(Kclient, Kserver))
        goto end;

    ret = 1;

end:
    BN_clear_free(Kclient);
    BN_clear_free(Kserver);
    BN_clear_free(x);
    BN_free(u);
    BN_free(Apub);
    BN_clear_free(a);
    BN_free(Bpub);
    BN_clear_free(b);
    BN_free(s);
    BN_clear_free(v);

    return ret;
}
