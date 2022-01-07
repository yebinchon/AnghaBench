
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int custom_ext_methods ;
struct TYPE_6__ {int context; } ;
typedef TYPE_1__ custom_ext_method ;
struct TYPE_7__ {unsigned int type; int context; } ;
typedef int SSL ;
typedef int RAW_EXTENSION ;
typedef TYPE_2__ EXTENSION_DEFINITION ;
typedef int ENDPOINT ;


 int ENDPOINT_BOTH ;
 int ENDPOINT_CLIENT ;
 int ENDPOINT_SERVER ;
 size_t OSSL_NELEM (TYPE_2__*) ;
 unsigned int SSL_EXT_CLIENT_HELLO ;
 unsigned int SSL_EXT_TLS1_2_SERVER_HELLO ;
 TYPE_1__* custom_ext_find (int *,int ,unsigned int,size_t*) ;
 TYPE_2__* ext_defs ;
 int validate_context (int *,int ,unsigned int) ;

__attribute__((used)) static int verify_extension(SSL *s, unsigned int context, unsigned int type,
                            custom_ext_methods *meths, RAW_EXTENSION *rawexlist,
                            RAW_EXTENSION **found)
{
    size_t i;
    size_t builtin_num = OSSL_NELEM(ext_defs);
    const EXTENSION_DEFINITION *thisext;

    for (i = 0, thisext = ext_defs; i < builtin_num; i++, thisext++) {
        if (type == thisext->type) {
            if (!validate_context(s, thisext->context, context))
                return 0;

            *found = &rawexlist[i];
            return 1;
        }
    }


    if (meths != ((void*)0)) {
        size_t offset = 0;
        ENDPOINT role = ENDPOINT_BOTH;
        custom_ext_method *meth = ((void*)0);

        if ((context & SSL_EXT_CLIENT_HELLO) != 0)
            role = ENDPOINT_SERVER;
        else if ((context & SSL_EXT_TLS1_2_SERVER_HELLO) != 0)
            role = ENDPOINT_CLIENT;

        meth = custom_ext_find(meths, role, type, &offset);
        if (meth != ((void*)0)) {
            if (!validate_context(s, meth->context, context))
                return 0;
            *found = &rawexlist[offset + builtin_num];
            return 1;
        }
    }


    *found = ((void*)0);
    return 1;
}
