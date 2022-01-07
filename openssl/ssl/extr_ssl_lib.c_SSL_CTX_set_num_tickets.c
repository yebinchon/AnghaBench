
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t num_tickets; } ;
typedef TYPE_1__ SSL_CTX ;



int SSL_CTX_set_num_tickets(SSL_CTX *ctx, size_t num_tickets)
{
    ctx->num_tickets = num_tickets;

    return 1;
}
