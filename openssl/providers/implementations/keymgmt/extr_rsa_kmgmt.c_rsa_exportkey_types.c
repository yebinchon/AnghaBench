
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int const* rsa_key_types ;

__attribute__((used)) static const OSSL_PARAM *rsa_exportkey_types(void)
{
    return rsa_key_types;
}
