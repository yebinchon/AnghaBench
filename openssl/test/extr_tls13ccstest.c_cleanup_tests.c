
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_meth_free (int ) ;
 int method_watchccs ;

void cleanup_tests(void)
{
    BIO_meth_free(method_watchccs);
}
