
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;


 int uninit_proxy_dowork (struct context*) ;

__attribute__((used)) static void
uninit_proxy(struct context *c)
{
    uninit_proxy_dowork(c);
}
