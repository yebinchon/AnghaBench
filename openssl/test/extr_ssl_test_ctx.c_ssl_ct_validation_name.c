
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssl_ct_validation_t ;


 int OSSL_NELEM (int ) ;
 char const* enum_name (int ,int ,int ) ;
 int ssl_ct_validation_modes ;

const char *ssl_ct_validation_name(ssl_ct_validation_t mode)
{
    return enum_name(ssl_ct_validation_modes, OSSL_NELEM(ssl_ct_validation_modes),
                     mode);
}
