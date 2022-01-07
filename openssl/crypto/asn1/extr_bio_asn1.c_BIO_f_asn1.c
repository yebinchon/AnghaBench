
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int const methods_asn1 ;

const BIO_METHOD *BIO_f_asn1(void)
{
    return &methods_asn1;
}
