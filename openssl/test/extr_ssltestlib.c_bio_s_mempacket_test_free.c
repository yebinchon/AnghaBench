
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_meth_free (int ) ;
 int meth_mem ;

void bio_s_mempacket_test_free(void)
{
    BIO_meth_free(meth_mem);
}
