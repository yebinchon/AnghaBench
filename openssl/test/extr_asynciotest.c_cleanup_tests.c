
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_meth_free (int ) ;
 int methods_async ;

void cleanup_tests(void)
{
    BIO_meth_free(methods_async);
}
