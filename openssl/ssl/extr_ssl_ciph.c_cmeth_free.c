
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_COMP ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void cmeth_free(SSL_COMP *cm)
{
    OPENSSL_free(cm);
}
