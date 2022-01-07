
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ BUF_MEM ;
typedef int BIO ;
typedef int ASN1_ITEM ;


 void* ASN1_item_d2i (void*,unsigned char const**,int,int const*) ;
 int BUF_MEM_free (TYPE_1__*) ;
 int asn1_d2i_read_bio (int *,TYPE_1__**) ;

void *ASN1_item_d2i_bio(const ASN1_ITEM *it, BIO *in, void *x)
{
    BUF_MEM *b = ((void*)0);
    const unsigned char *p;
    void *ret = ((void*)0);
    int len;

    len = asn1_d2i_read_bio(in, &b);
    if (len < 0)
        goto err;

    p = (const unsigned char *)b->data;
    ret = ASN1_item_d2i(x, &p, len, it);
 err:
    BUF_MEM_free(b);
    return ret;
}
