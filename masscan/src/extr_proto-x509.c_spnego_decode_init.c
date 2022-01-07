
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SpnegoDecode {int x509; } ;


 int ASN1_push (int ,int,size_t) ;
 int memset (struct SpnegoDecode*,int ,int) ;

void
spnego_decode_init(struct SpnegoDecode *x, size_t length)
{
    memset(x, 0, sizeof(*x));

    ASN1_push(x->x509, 0xFFFFFFFF, length);
}
