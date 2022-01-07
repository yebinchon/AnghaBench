
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_KDF ;
typedef int ASN1_OBJECT ;


 int * EVP_KDF_fetch (int *,int ,int *) ;
 int EVP_KDF_free (int *) ;
 int LN_tls1_prf ;
 int NID_id_pbkdf2 ;
 int NID_tls1_prf ;
 int * OBJ_nid2obj (int ) ;
 int OBJ_nid2sn (int ) ;
 int OBJ_obj2nid (int *) ;
 int OSSL_KDF_NAME_PBKDF2 ;
 int SN_tls1_prf ;
 int TEST_ptr (int *) ;
 int TEST_ptr_eq (int *,int *) ;

__attribute__((used)) static int test_kdf_get_kdf(void)
{
    EVP_KDF *kdf1 = ((void*)0), *kdf2 = ((void*)0);
    ASN1_OBJECT *obj;
    int ok = 1;

    if (!TEST_ptr(obj = OBJ_nid2obj(NID_id_pbkdf2))
        || !TEST_ptr(kdf1 = EVP_KDF_fetch(((void*)0), OSSL_KDF_NAME_PBKDF2, ((void*)0)))
        || !TEST_ptr(kdf2 = EVP_KDF_fetch(((void*)0), OBJ_nid2sn(OBJ_obj2nid(obj)),
                                          ((void*)0)))
        || !TEST_ptr_eq(kdf1, kdf2))
        ok = 0;
    EVP_KDF_free(kdf1);
    kdf1 = ((void*)0);
    EVP_KDF_free(kdf2);
    kdf2 = ((void*)0);

    if (!TEST_ptr(kdf1 = EVP_KDF_fetch(((void*)0), SN_tls1_prf, ((void*)0)))
        || !TEST_ptr(kdf2 = EVP_KDF_fetch(((void*)0), LN_tls1_prf, ((void*)0)))
        || !TEST_ptr_eq(kdf1, kdf2))
        ok = 0;

    EVP_KDF_free(kdf2);
    kdf2 = ((void*)0);

    if (!TEST_ptr(kdf2 = EVP_KDF_fetch(((void*)0), OBJ_nid2sn(NID_tls1_prf), ((void*)0)))
        || !TEST_ptr_eq(kdf1, kdf2))
        ok = 0;
    EVP_KDF_free(kdf1);
    kdf1 = ((void*)0);
    EVP_KDF_free(kdf2);
    kdf2 = ((void*)0);

    return ok;
}
