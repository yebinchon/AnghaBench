
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_CMP_MSG ;


 scalar_t__ i2d_OSSL_CMP_MSG (int const*,int *) ;

int valid_asn1_encoding(const OSSL_CMP_MSG *msg)
{
    return msg != ((void*)0) ? i2d_OSSL_CMP_MSG(msg, ((void*)0)) > 0 : 0;
}
