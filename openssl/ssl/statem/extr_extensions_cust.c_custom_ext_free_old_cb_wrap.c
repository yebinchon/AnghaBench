
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int add_arg; int (* free_cb ) (int *,unsigned int,unsigned char const*,int ) ;} ;
typedef TYPE_1__ custom_ext_add_cb_wrap ;
typedef int SSL ;


 int stub1 (int *,unsigned int,unsigned char const*,int ) ;

__attribute__((used)) static void custom_ext_free_old_cb_wrap(SSL *s, unsigned int ext_type,
                                        unsigned int context,
                                        const unsigned char *out, void *add_arg)
{
    custom_ext_add_cb_wrap *add_cb_wrap = (custom_ext_add_cb_wrap *)add_arg;

    if (add_cb_wrap->free_cb == ((void*)0))
        return;

    add_cb_wrap->free_cb(s, ext_type, out, add_cb_wrap->add_arg);
}
