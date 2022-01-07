
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char const* sid_ctx; scalar_t__ sid_ctx_length; } ;
typedef TYPE_1__ SSL_SESSION ;



const unsigned char *SSL_SESSION_get0_id_context(const SSL_SESSION *s,
                                                unsigned int *len)
{
    if (len != ((void*)0))
        *len = (unsigned int)s->sid_ctx_length;
    return s->sid_ctx;
}
