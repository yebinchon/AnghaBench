
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* npn_select_cb_arg; int npn_select_cb; } ;
struct TYPE_5__ {TYPE_1__ ext; } ;
typedef int SSL_CTX_npn_select_cb_func ;
typedef TYPE_2__ SSL_CTX ;



void SSL_CTX_set_npn_select_cb(SSL_CTX *ctx,
                               SSL_CTX_npn_select_cb_func cb,
                               void *arg)
{
    ctx->ext.npn_select_cb = cb;
    ctx->ext.npn_select_cb_arg = arg;
}
