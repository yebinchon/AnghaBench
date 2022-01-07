
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * libctx; } ;
typedef TYPE_1__ OSSL_PROVIDER ;
typedef int OPENSSL_CTX ;



OPENSSL_CTX *ossl_provider_library_context(const OSSL_PROVIDER *prov)
{

    return prov != ((void*)0) ? prov->libctx : ((void*)0);
}
