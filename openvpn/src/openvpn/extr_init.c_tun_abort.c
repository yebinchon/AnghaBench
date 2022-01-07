
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;


 int do_close_tun (struct context*,int) ;
 struct context* static_context ;

void
tun_abort(void)
{
    struct context *c = static_context;
    if (c)
    {
        static_context = ((void*)0);
        do_close_tun(c, 1);
    }
}
