
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int length; unsigned char* data; int type; } ;
struct TYPE_5__ {int q; } ;
typedef TYPE_1__ DSA ;
typedef TYPE_2__ ASN1_INTEGER ;


 int ASN1_object_size (int,int,int ) ;
 int BN_num_bits (int ) ;
 int V_ASN1_INTEGER ;
 int V_ASN1_SEQUENCE ;
 int i2d_ASN1_INTEGER (TYPE_2__*,int *) ;

int DSA_size(const DSA *r)
{
    int ret, i;
    ASN1_INTEGER bs;
    unsigned char buf[4];




    i = BN_num_bits(r->q);
    bs.length = (i + 7) / 8;
    bs.data = buf;
    bs.type = V_ASN1_INTEGER;

    buf[0] = 0xff;

    i = i2d_ASN1_INTEGER(&bs, ((void*)0));
    i += i;
    ret = ASN1_object_size(1, i, V_ASN1_SEQUENCE);
    return ret;
}
