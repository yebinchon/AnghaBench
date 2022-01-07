
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
typedef void EVP_PKEY ;
typedef TYPE_1__ BUF_MEM ;
typedef int BIO ;


 int BUF_MEM_free (TYPE_1__*) ;
 int asn1_d2i_read_bio (int *,TYPE_1__**) ;
 void* d2i_KeyParams (int,void**,unsigned char const**,int) ;

EVP_PKEY *d2i_KeyParams_bio(int type, EVP_PKEY **a, BIO *in)
{
    BUF_MEM *b = ((void*)0);
    const unsigned char *p;
    void *ret = ((void*)0);
    int len;

    len = asn1_d2i_read_bio(in, &b);
    if (len < 0)
        goto err;

    p = (unsigned char *)b->data;
    ret = d2i_KeyParams(type, a, &p, len);
err:
    BUF_MEM_free(b);
    return ret;
}
