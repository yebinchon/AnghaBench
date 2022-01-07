
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssl_session_id_t ;


 int OSSL_NELEM (int ) ;
 char const* enum_name (int ,int ,int ) ;
 int ssl_session_id ;

const char *ssl_session_id_name(ssl_session_id_t server)
{
    return enum_name(ssl_session_id,
                     OSSL_NELEM(ssl_session_id),
                     server);
}
