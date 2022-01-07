
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * fetched_digest; int const* digest; } ;
struct TYPE_6__ {int skip; TYPE_2__* data; } ;
typedef TYPE_1__ EVP_TEST ;
typedef int EVP_MD ;
typedef TYPE_2__ DIGEST_DATA ;


 int * EVP_MD_fetch (int *,char const*,int *) ;
 int * EVP_get_digestbyname (char const*) ;
 scalar_t__ NID_undef ;
 scalar_t__ OBJ_ln2nid (char const*) ;
 scalar_t__ OBJ_sn2nid (char const*) ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 int TEST_info (char*,char const*) ;
 int TEST_ptr (TYPE_2__*) ;

__attribute__((used)) static int digest_test_init(EVP_TEST *t, const char *alg)
{
    DIGEST_DATA *mdat;
    const EVP_MD *digest;
    EVP_MD *fetched_digest;

    if ((digest = fetched_digest = EVP_MD_fetch(((void*)0), alg, ((void*)0))) == ((void*)0)
        && (digest = EVP_get_digestbyname(alg)) == ((void*)0)) {

        if (OBJ_sn2nid(alg) != NID_undef || OBJ_ln2nid(alg) != NID_undef) {
            t->skip = 1;
            return 1;
        }
        return 0;
    }
    if (!TEST_ptr(mdat = OPENSSL_zalloc(sizeof(*mdat))))
        return 0;
    t->data = mdat;
    mdat->digest = digest;
    mdat->fetched_digest = fetched_digest;
    if (fetched_digest != ((void*)0))
        TEST_info("%s is fetched", alg);
    return 1;
}
