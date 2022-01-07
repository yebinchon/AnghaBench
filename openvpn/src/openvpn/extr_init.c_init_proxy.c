
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int dummy; } ;


 int init_proxy_dowork (struct context*) ;

__attribute__((used)) static void
init_proxy(struct context *c)
{
    init_proxy_dowork(c);
}
