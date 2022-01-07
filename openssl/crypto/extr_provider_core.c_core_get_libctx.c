
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;
typedef int OPENSSL_CTX ;


 int * ossl_provider_library_context (int const*) ;

__attribute__((used)) static OPENSSL_CTX *core_get_libctx(const OSSL_PROVIDER *prov)
{
    return ossl_provider_library_context(prov);
}
