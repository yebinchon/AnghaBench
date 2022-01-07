
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CertDecode {int dummy; } ;


 int ASN1_push (struct CertDecode*,int,size_t) ;
 int memset (struct CertDecode*,int ,int) ;

void
x509_decode_init(struct CertDecode *x, size_t length)
{
    memset(x, 0, sizeof(*x));
    ASN1_push(x, 0xFFFFFFFF, length);
}
