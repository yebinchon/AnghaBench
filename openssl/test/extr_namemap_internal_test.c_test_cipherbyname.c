
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_NAMEMAP ;
typedef int EVP_CIPHER ;


 int * EVP_get_cipherbyname (char*) ;
 int TEST_int_eq (int,int) ;
 int TEST_int_ne (int,int ) ;
 int TEST_ptr (int const*) ;
 int TEST_ptr_eq (int const*,int const*) ;
 int ossl_namemap_add (int *,int,char*) ;
 int * ossl_namemap_stored (int *) ;

__attribute__((used)) static int test_cipherbyname(void)
{
    int id;
    OSSL_NAMEMAP *nm = ossl_namemap_stored(((void*)0));
    const EVP_CIPHER *aes128, *bar;

    id = ossl_namemap_add(nm, 0, "AES-128-CBC");
    if (!TEST_int_ne(id, 0))
        return 0;
    if (!TEST_int_eq(ossl_namemap_add(nm, id, "bar"), id))
        return 0;

    aes128 = EVP_get_cipherbyname("AES-128-CBC");
    if (!TEST_ptr(aes128))
        return 0;
    bar = EVP_get_cipherbyname("bar");
    if (!TEST_ptr_eq(aes128, bar))
        return 0;

    return 1;
}
