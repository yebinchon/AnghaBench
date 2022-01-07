
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ptr; } ;
typedef TYPE_1__ zend_resource ;
typedef int EVP_PKEY ;


 int EVP_PKEY_free (int *) ;
 int assert (int ) ;

__attribute__((used)) static void php_openssl_pkey_free(zend_resource *rsrc)
{
 EVP_PKEY *pkey = (EVP_PKEY *)rsrc->ptr;

 assert(pkey != ((void*)0));

 EVP_PKEY_free(pkey);
}
