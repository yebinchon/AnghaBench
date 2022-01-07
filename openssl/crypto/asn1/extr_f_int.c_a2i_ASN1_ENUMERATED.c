
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef int BIO ;
typedef TYPE_1__ ASN1_ENUMERATED ;


 int V_ASN1_INTEGER ;
 int V_ASN1_NEG ;
 int a2i_ASN1_INTEGER (int *,TYPE_1__*,char*,int) ;

int a2i_ASN1_ENUMERATED(BIO *bp, ASN1_ENUMERATED *bs, char *buf, int size)
{
    int rv = a2i_ASN1_INTEGER(bp, bs, buf, size);
    if (rv == 1)
        bs->type = V_ASN1_INTEGER | (bs->type & V_ASN1_NEG);
    return rv;
}
