
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rlayer; } ;
typedef TYPE_1__ SSL ;


 int RECORD_LAYER_get_rbuf (int *) ;
 int SSL3_BUFFER_set_default_len (int ,size_t) ;

void SSL_set_default_read_buffer_len(SSL *s, size_t len)
{
    SSL3_BUFFER_set_default_len(RECORD_LAYER_get_rbuf(&s->rlayer), len);
}
