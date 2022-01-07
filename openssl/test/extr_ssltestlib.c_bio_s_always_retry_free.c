
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_meth_free (int ) ;
 int meth_always_retry ;

void bio_s_always_retry_free(void)
{
    BIO_meth_free(meth_always_retry);
}
