
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int skip; TYPE_1__* data; } ;
struct TYPE_7__ {int * ctx; } ;
typedef TYPE_1__ PKEY_KDF_DATA ;
typedef TYPE_2__ EVP_TEST ;


 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new_id (int,int *) ;
 scalar_t__ EVP_PKEY_derive_init (int *) ;
 int NID_undef ;
 int OBJ_ln2nid (char const*) ;
 int OBJ_sn2nid (char const*) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int TEST_ptr (TYPE_1__*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int pkey_kdf_test_init(EVP_TEST *t, const char *name)
{
    PKEY_KDF_DATA *kdata;
    int kdf_nid = OBJ_sn2nid(name);
    if (kdf_nid == NID_undef)
        kdf_nid = OBJ_ln2nid(name);

    if (!TEST_ptr(kdata = OPENSSL_zalloc(sizeof(*kdata))))
        return 0;
    kdata->ctx = EVP_PKEY_CTX_new_id(kdf_nid, ((void*)0));
    if (kdata->ctx == ((void*)0)) {
        OPENSSL_free(kdata);
        return 0;
    }
    if (EVP_PKEY_derive_init(kdata->ctx) <= 0) {
        EVP_PKEY_CTX_free(kdata->ctx);
        OPENSSL_free(kdata);
        return 0;
    }
    t->data = kdata;
    return 1;
}
