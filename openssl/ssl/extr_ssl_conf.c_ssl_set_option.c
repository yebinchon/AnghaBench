
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long uint32_t ;
struct TYPE_3__ {unsigned long* poptions; unsigned long* pcert_flags; unsigned long* pvfy_flags; } ;
typedef TYPE_1__ SSL_CONF_CTX ;



 unsigned int SSL_TFLAG_INV ;

 unsigned int SSL_TFLAG_TYPE_MASK ;


__attribute__((used)) static void ssl_set_option(SSL_CONF_CTX *cctx, unsigned int name_flags,
                           unsigned long option_value, int onoff)
{
    uint32_t *pflags;
    if (cctx->poptions == ((void*)0))
        return;
    if (name_flags & SSL_TFLAG_INV)
        onoff ^= 1;
    switch (name_flags & SSL_TFLAG_TYPE_MASK) {

    case 130:
        pflags = cctx->pcert_flags;
        break;

    case 128:
        pflags = cctx->pvfy_flags;
        break;

    case 129:
        pflags = cctx->poptions;
        break;

    default:
        return;

    }
    if (onoff)
        *pflags |= option_value;
    else
        *pflags &= ~option_value;
}
