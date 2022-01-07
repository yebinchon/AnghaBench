
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int epilogue ;
struct TYPE_6__ {int skip; TYPE_1__* data; } ;
struct TYPE_5__ {int type; int controls; int * mac; int mac_name; } ;
typedef TYPE_1__ MAC_DATA ;
typedef TYPE_2__ EVP_TEST ;
typedef int EVP_MAC ;


 int * EVP_MAC_fetch (int *,char const*,int *) ;
 int EVP_PKEY_CMAC ;
 int EVP_PKEY_HMAC ;
 int EVP_PKEY_POLY1305 ;
 int EVP_PKEY_SIPHASH ;
 int NID_undef ;
 int OBJ_ln2nid (char const*) ;
 int OBJ_sn2nid (char const*) ;
 int OPENSSL_strdup (char const*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int sk_OPENSSL_STRING_new_null () ;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

__attribute__((used)) static int mac_test_init(EVP_TEST *t, const char *alg)
{
    EVP_MAC *mac = ((void*)0);
    int type = NID_undef;
    MAC_DATA *mdat;

    if ((mac = EVP_MAC_fetch(((void*)0), alg, ((void*)0))) == ((void*)0)) {





        size_t sz = strlen(alg);
        static const char epilogue[] = " by EVP_PKEY";

        if (sz >= sizeof(epilogue)
            && strcmp(alg + sz - (sizeof(epilogue) - 1), epilogue) == 0)
            sz -= sizeof(epilogue) - 1;

        if (strncmp(alg, "HMAC", sz) == 0) {
            type = EVP_PKEY_HMAC;
        } else if (strncmp(alg, "CMAC", sz) == 0) {

            type = EVP_PKEY_CMAC;




        } else if (strncmp(alg, "Poly1305", sz) == 0) {

            type = EVP_PKEY_POLY1305;




        } else if (strncmp(alg, "SipHash", sz) == 0) {

            type = EVP_PKEY_SIPHASH;




        } else {




            if (OBJ_sn2nid(alg) != NID_undef || OBJ_ln2nid(alg) != NID_undef) {
                t->skip = 1;
                return 1;
            }

            return 0;
        }
    }

    mdat = OPENSSL_zalloc(sizeof(*mdat));
    mdat->type = type;
    mdat->mac_name = OPENSSL_strdup(alg);
    mdat->mac = mac;
    mdat->controls = sk_OPENSSL_STRING_new_null();
    t->data = mdat;
    return 1;
}
