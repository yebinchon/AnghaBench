
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned int type; int data; scalar_t__ present; } ;
struct TYPE_6__ {TYPE_1__* clienthello; } ;
struct TYPE_5__ {size_t pre_proc_exts_len; TYPE_3__* pre_proc_exts; } ;
typedef TYPE_2__ SSL ;
typedef TYPE_3__ RAW_EXTENSION ;


 unsigned char* PACKET_data (int *) ;
 size_t PACKET_remaining (int *) ;

int SSL_client_hello_get0_ext(SSL *s, unsigned int type, const unsigned char **out,
                       size_t *outlen)
{
    size_t i;
    RAW_EXTENSION *r;

    if (s->clienthello == ((void*)0))
        return 0;
    for (i = 0; i < s->clienthello->pre_proc_exts_len; ++i) {
        r = s->clienthello->pre_proc_exts + i;
        if (r->present && r->type == type) {
            if (out != ((void*)0))
                *out = PACKET_data(&r->data);
            if (outlen != ((void*)0))
                *outlen = PACKET_remaining(&r->data);
            return 1;
        }
    }
    return 0;
}
