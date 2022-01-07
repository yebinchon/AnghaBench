
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {int dummy; } ;
struct context {int dummy; } ;


 scalar_t__ IS_SIG (struct context*) ;
 int init_instance (struct context*,struct env_set const*,unsigned int const) ;
 int post_init_signal_catch () ;
 int pre_init_signal_catch () ;
 int remap_signal (struct context*) ;
 int uninit_management_callback () ;

void
init_instance_handle_signals(struct context *c, const struct env_set *env, const unsigned int flags)
{
    pre_init_signal_catch();
    init_instance(c, env, flags);
    post_init_signal_catch();






    if (IS_SIG(c))
    {
        remap_signal(c);
        uninit_management_callback();
    }
}
