
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ssl; scalar_t__ ctx; } ;
typedef TYPE_1__ SSL_CONF_CTX ;


 int SSL_CTX_set_block_padding (scalar_t__,int) ;
 int SSL_set_block_padding (scalar_t__,int) ;
 int atoi (char const*) ;

__attribute__((used)) static int cmd_RecordPadding(SSL_CONF_CTX *cctx, const char *value)
{
    int rv = 0;
    int block_size = atoi(value);





    if (block_size >= 0) {
        if (cctx->ctx)
            rv = SSL_CTX_set_block_padding(cctx->ctx, block_size);
        if (cctx->ssl)
            rv = SSL_set_block_padding(cctx->ssl, block_size);
    }
    return rv;
}
