
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; } ;
typedef TYPE_1__ SSL ;


 char const* ssl_protocol_to_string (int ) ;

const char *SSL_get_version(const SSL *s)
{
    return ssl_protocol_to_string(s->version);
}
