
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_NAMEMAP ;
typedef int EVP_MD ;


 int * EVP_get_digestbyname (char*) ;
 int TEST_int_eq (int,int) ;
 int TEST_int_ne (int,int ) ;
 int TEST_ptr (int const*) ;
 int TEST_ptr_eq (int const*,int const*) ;
 int ossl_namemap_add (int *,int,char*) ;
 int * ossl_namemap_stored (int *) ;

__attribute__((used)) static int test_digestbyname(void)
{
    int id;
    OSSL_NAMEMAP *nm = ossl_namemap_stored(((void*)0));
    const EVP_MD *sha256, *foo;

    id = ossl_namemap_add(nm, 0, "SHA256");
    if (!TEST_int_ne(id, 0))
        return 0;
    if (!TEST_int_eq(ossl_namemap_add(nm, id, "foo"), id))
        return 0;

    sha256 = EVP_get_digestbyname("SHA256");
    if (!TEST_ptr(sha256))
        return 0;
    foo = EVP_get_digestbyname("foo");
    if (!TEST_ptr_eq(sha256, foo))
        return 0;

    return 1;
}
