
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int BIO_meth_free (int *) ;
 int * apps_bf_prefix () ;

void destroy_prefix_method(void)
{
    BIO_METHOD *prefix_method = apps_bf_prefix();
    BIO_meth_free(prefix_method);
    prefix_method = ((void*)0);
}
