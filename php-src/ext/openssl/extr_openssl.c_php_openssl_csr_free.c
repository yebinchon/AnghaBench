
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ptr; } ;
typedef TYPE_1__ zend_resource ;
typedef int X509_REQ ;


 int X509_REQ_free (int *) ;

__attribute__((used)) static void php_openssl_csr_free(zend_resource *rsrc)
{
 X509_REQ * csr = (X509_REQ*)rsrc->ptr;
 X509_REQ_free(csr);
}
