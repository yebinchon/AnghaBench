
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int const methods_b64 ;

const BIO_METHOD *BIO_f_base64(void)
{
    return &methods_b64;
}
