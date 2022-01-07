
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp2 ;
typedef int tmp ;
struct TYPE_3__ {char* id; int * g; int * N; } ;
typedef TYPE_1__ SRP_gN ;
typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char*,int,int *) ;
 scalar_t__ BN_bn2bin (int *,unsigned char*) ;
 int BN_clear_free (int *) ;
 int BN_free (int *) ;
 int BN_num_bytes (int *) ;
 int MAX_LEN ;
 int OPENSSL_clear_free (char*,int) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_malloc (int) ;
 scalar_t__ RAND_bytes (unsigned char*,int) ;
 int SRP_RANDOM_SALT_LEN ;
 int SRP_create_verifier_BN (char const*,char const*,int **,int **,int const*,int const*) ;
 TYPE_1__* SRP_get_default_gN (char const*) ;
 int t_fromb64 (unsigned char*,int,char const*) ;
 int t_tob64 (char*,unsigned char*,int) ;

char *SRP_create_verifier(const char *user, const char *pass, char **salt,
                          char **verifier, const char *N, const char *g)
{
    int len;
    char *result = ((void*)0), *vf = ((void*)0);
    const BIGNUM *N_bn = ((void*)0), *g_bn = ((void*)0);
    BIGNUM *N_bn_alloc = ((void*)0), *g_bn_alloc = ((void*)0), *s = ((void*)0), *v = ((void*)0);
    unsigned char tmp[MAX_LEN];
    unsigned char tmp2[MAX_LEN];
    char *defgNid = ((void*)0);
    int vfsize = 0;

    if ((user == ((void*)0)) ||
        (pass == ((void*)0)) || (salt == ((void*)0)) || (verifier == ((void*)0)))
        goto err;

    if (N) {
        if ((len = t_fromb64(tmp, sizeof(tmp), N)) <= 0)
            goto err;
        N_bn_alloc = BN_bin2bn(tmp, len, ((void*)0));
        if (N_bn_alloc == ((void*)0))
            goto err;
        N_bn = N_bn_alloc;
        if ((len = t_fromb64(tmp, sizeof(tmp) ,g)) <= 0)
            goto err;
        g_bn_alloc = BN_bin2bn(tmp, len, ((void*)0));
        if (g_bn_alloc == ((void*)0))
            goto err;
        g_bn = g_bn_alloc;
        defgNid = "*";
    } else {
        SRP_gN *gN = SRP_get_default_gN(g);
        if (gN == ((void*)0))
            goto err;
        N_bn = gN->N;
        g_bn = gN->g;
        defgNid = gN->id;
    }

    if (*salt == ((void*)0)) {
        if (RAND_bytes(tmp2, SRP_RANDOM_SALT_LEN) <= 0)
            goto err;

        s = BN_bin2bn(tmp2, SRP_RANDOM_SALT_LEN, ((void*)0));
    } else {
        if ((len = t_fromb64(tmp2, sizeof(tmp2), *salt)) <= 0)
            goto err;
        s = BN_bin2bn(tmp2, len, ((void*)0));
    }
    if (s == ((void*)0))
        goto err;

    if (!SRP_create_verifier_BN(user, pass, &s, &v, N_bn, g_bn))
        goto err;

    if (BN_bn2bin(v, tmp) < 0)
        goto err;
    vfsize = BN_num_bytes(v) * 2;
    if (((vf = OPENSSL_malloc(vfsize)) == ((void*)0)))
        goto err;
    if (!t_tob64(vf, tmp, BN_num_bytes(v)))
        goto err;

    if (*salt == ((void*)0)) {
        char *tmp_salt;

        if ((tmp_salt = OPENSSL_malloc(SRP_RANDOM_SALT_LEN * 2)) == ((void*)0)) {
            goto err;
        }
        if (!t_tob64(tmp_salt, tmp2, SRP_RANDOM_SALT_LEN)) {
            OPENSSL_free(tmp_salt);
            goto err;
        }
        *salt = tmp_salt;
    }

    *verifier = vf;
    vf = ((void*)0);
    result = defgNid;

 err:
    BN_free(N_bn_alloc);
    BN_free(g_bn_alloc);
    OPENSSL_clear_free(vf, vfsize);
    BN_clear_free(s);
    BN_clear_free(v);
    return result;
}
