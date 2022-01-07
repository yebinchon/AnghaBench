
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int custom_ext_parse_cb_wrap ;
struct TYPE_7__ {int meths_count; TYPE_2__* meths; } ;
typedef TYPE_1__ custom_ext_methods ;
struct TYPE_8__ {scalar_t__ add_cb; struct TYPE_8__* parse_arg; struct TYPE_8__* add_arg; } ;
typedef TYPE_2__ custom_ext_method ;
typedef int custom_ext_add_cb_wrap ;


 void* OPENSSL_memdup (TYPE_2__*,int) ;
 scalar_t__ custom_ext_add_old_cb_wrap ;
 int custom_exts_free (TYPE_1__*) ;

int custom_exts_copy(custom_ext_methods *dst, const custom_ext_methods *src)
{
    size_t i;
    int err = 0;

    if (src->meths_count > 0) {
        dst->meths =
            OPENSSL_memdup(src->meths,
                           sizeof(*src->meths) * src->meths_count);
        if (dst->meths == ((void*)0))
            return 0;
        dst->meths_count = src->meths_count;

        for (i = 0; i < src->meths_count; i++) {
            custom_ext_method *methsrc = src->meths + i;
            custom_ext_method *methdst = dst->meths + i;

            if (methsrc->add_cb != custom_ext_add_old_cb_wrap)
                continue;






            if (err) {
                methdst->add_arg = ((void*)0);
                methdst->parse_arg = ((void*)0);
                continue;
            }

            methdst->add_arg = OPENSSL_memdup(methsrc->add_arg,
                                              sizeof(custom_ext_add_cb_wrap));
            methdst->parse_arg = OPENSSL_memdup(methsrc->parse_arg,
                                            sizeof(custom_ext_parse_cb_wrap));

            if (methdst->add_arg == ((void*)0) || methdst->parse_arg == ((void*)0))
                err = 1;
        }
    }

    if (err) {
        custom_exts_free(dst);
        return 0;
    }

    return 1;
}
