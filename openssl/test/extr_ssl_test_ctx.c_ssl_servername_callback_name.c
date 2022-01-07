
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssl_servername_callback_t ;


 int OSSL_NELEM (int ) ;
 char const* enum_name (int ,int ,int ) ;
 int ssl_servername_callbacks ;

const char *ssl_servername_callback_name(ssl_servername_callback_t callback)
{
    return enum_name(ssl_servername_callbacks,
                     OSSL_NELEM(ssl_servername_callbacks), callback);
}
