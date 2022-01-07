
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int const null_method ;

const BIO_METHOD *BIO_s_null(void)
{
    return &null_method;
}
