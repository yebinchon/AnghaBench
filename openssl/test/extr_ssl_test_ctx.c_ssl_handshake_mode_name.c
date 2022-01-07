
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssl_handshake_mode_t ;


 int OSSL_NELEM (int ) ;
 char const* enum_name (int ,int ,int ) ;
 int ssl_handshake_modes ;

const char *ssl_handshake_mode_name(ssl_handshake_mode_t mode)
{
    return enum_name(ssl_handshake_modes, OSSL_NELEM(ssl_handshake_modes),
                     mode);
}
