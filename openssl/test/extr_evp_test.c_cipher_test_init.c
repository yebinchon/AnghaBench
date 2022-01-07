
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int enc; int aead; int * fetched_cipher; int const* cipher; } ;
struct TYPE_5__ {int skip; TYPE_2__* data; } ;
typedef TYPE_1__ EVP_TEST ;
typedef int EVP_CIPHER ;
typedef TYPE_2__ CIPHER_DATA ;


 int * EVP_CIPHER_fetch (int *,char const*,int *) ;
 int EVP_CIPHER_flags (int const*) ;
 int EVP_CIPHER_mode (int const*) ;
 int EVP_CIPH_CCM_MODE ;
 int EVP_CIPH_FLAG_AEAD_CIPHER ;
 int EVP_CIPH_GCM_MODE ;
 int EVP_CIPH_OCB_MODE ;
 int EVP_CIPH_SIV_MODE ;
 int * EVP_get_cipherbyname (char const*) ;
 scalar_t__ NID_undef ;
 scalar_t__ OBJ_ln2nid (char const*) ;
 scalar_t__ OBJ_sn2nid (char const*) ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 int TEST_info (char*,char const*) ;

__attribute__((used)) static int cipher_test_init(EVP_TEST *t, const char *alg)
{
    const EVP_CIPHER *cipher;
    EVP_CIPHER *fetched_cipher;
    CIPHER_DATA *cdat;
    int m;

    if ((cipher = fetched_cipher = EVP_CIPHER_fetch(((void*)0), alg, ((void*)0))) == ((void*)0)
        && (cipher = EVP_get_cipherbyname(alg)) == ((void*)0)) {

        if (OBJ_sn2nid(alg) != NID_undef || OBJ_ln2nid(alg) != NID_undef) {
            t->skip = 1;
            return 1;
        }
        return 0;
    }
    cdat = OPENSSL_zalloc(sizeof(*cdat));
    cdat->cipher = cipher;
    cdat->fetched_cipher = fetched_cipher;
    cdat->enc = -1;
    m = EVP_CIPHER_mode(cipher);
    if (m == EVP_CIPH_GCM_MODE
            || m == EVP_CIPH_OCB_MODE
            || m == EVP_CIPH_SIV_MODE
            || m == EVP_CIPH_CCM_MODE)
        cdat->aead = m;
    else if (EVP_CIPHER_flags(cipher) & EVP_CIPH_FLAG_AEAD_CIPHER)
        cdat->aead = -1;
    else
        cdat->aead = 0;

    t->data = cdat;
    if (fetched_cipher != ((void*)0))
        TEST_info("%s is fetched", alg);
    return 1;
}
