
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_14__ {unsigned int context; } ;
typedef TYPE_2__ custom_ext_method ;
struct TYPE_17__ {unsigned int context; } ;
struct TYPE_16__ {int type; int present; } ;
struct TYPE_15__ {TYPE_1__* cert; } ;
struct TYPE_12__ {size_t meths_count; } ;
struct TYPE_13__ {TYPE_10__ custext; } ;
typedef TYPE_3__ SSL ;
typedef TYPE_4__ RAW_EXTENSION ;
typedef int ENDPOINT ;


 int ENDPOINT_BOTH ;
 int ENDPOINT_CLIENT ;
 int ENDPOINT_SERVER ;
 size_t OSSL_NELEM (TYPE_8__*) ;
 unsigned int SSL_EXT_CLIENT_HELLO ;
 unsigned int SSL_EXT_TLS1_2_SERVER_HELLO ;
 TYPE_2__* custom_ext_find (TYPE_10__*,int ,int ,size_t*) ;
 TYPE_8__* ext_defs ;
 int ossl_assert (int ) ;
 int validate_context (TYPE_3__*,unsigned int,unsigned int) ;

int tls_validate_all_contexts(SSL *s, unsigned int thisctx, RAW_EXTENSION *exts)
{
    size_t i, num_exts, builtin_num = OSSL_NELEM(ext_defs), offset;
    RAW_EXTENSION *thisext;
    unsigned int context;
    ENDPOINT role = ENDPOINT_BOTH;

    if ((thisctx & SSL_EXT_CLIENT_HELLO) != 0)
        role = ENDPOINT_SERVER;
    else if ((thisctx & SSL_EXT_TLS1_2_SERVER_HELLO) != 0)
        role = ENDPOINT_CLIENT;


    num_exts = builtin_num + s->cert->custext.meths_count;

    for (thisext = exts, i = 0; i < num_exts; i++, thisext++) {
        if (!thisext->present)
            continue;

        if (i < builtin_num) {
            context = ext_defs[i].context;
        } else {
            custom_ext_method *meth = ((void*)0);

            meth = custom_ext_find(&s->cert->custext, role, thisext->type,
                                   &offset);
            if (!ossl_assert(meth != ((void*)0)))
                return 0;
            context = meth->context;
        }

        if (!validate_context(s, context, thisctx))
            return 0;
    }

    return 1;
}
