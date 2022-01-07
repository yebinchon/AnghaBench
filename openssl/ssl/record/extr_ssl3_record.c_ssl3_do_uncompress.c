
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int expand; } ;
struct TYPE_5__ {unsigned char* comp; unsigned char* data; int length; } ;
typedef TYPE_1__ SSL3_RECORD ;
typedef TYPE_2__ SSL ;


 int COMP_expand_block (int ,unsigned char*,int ,unsigned char*,int) ;
 scalar_t__ OPENSSL_malloc (int ) ;
 int SSL3_RT_MAX_ENCRYPTED_LENGTH ;
 int SSL3_RT_MAX_PLAIN_LENGTH ;

int ssl3_do_uncompress(SSL *ssl, SSL3_RECORD *rr)
{

    int i;

    if (rr->comp == ((void*)0)) {
        rr->comp = (unsigned char *)
            OPENSSL_malloc(SSL3_RT_MAX_ENCRYPTED_LENGTH);
    }
    if (rr->comp == ((void*)0))
        return 0;


    i = COMP_expand_block(ssl->expand, rr->comp,
                          SSL3_RT_MAX_PLAIN_LENGTH, rr->data, (int)rr->length);
    if (i < 0)
        return 0;
    else
        rr->length = i;
    rr->data = rr->comp;

    return 1;
}
