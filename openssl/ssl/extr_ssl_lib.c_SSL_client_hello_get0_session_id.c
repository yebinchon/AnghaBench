
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* clienthello; } ;
struct TYPE_4__ {unsigned char* session_id; size_t session_id_len; } ;
typedef TYPE_2__ SSL ;



size_t SSL_client_hello_get0_session_id(SSL *s, const unsigned char **out)
{
    if (s->clienthello == ((void*)0))
        return 0;
    if (out != ((void*)0))
        *out = s->clienthello->session_id;
    return s->clienthello->session_id_len;
}
