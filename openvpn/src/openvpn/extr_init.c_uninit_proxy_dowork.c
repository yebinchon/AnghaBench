
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int http_proxy_owned; int socks_proxy_owned; int * socks_proxy; int * http_proxy; } ;
struct context {TYPE_1__ c1; } ;


 int http_proxy_close (int *) ;
 int socks_proxy_close (int *) ;

__attribute__((used)) static void
uninit_proxy_dowork(struct context *c)
{
    if (c->c1.http_proxy_owned && c->c1.http_proxy)
    {
        http_proxy_close(c->c1.http_proxy);
        c->c1.http_proxy = ((void*)0);
        c->c1.http_proxy_owned = 0;
    }
    if (c->c1.socks_proxy_owned && c->c1.socks_proxy)
    {
        socks_proxy_close(c->c1.socks_proxy);
        c->c1.socks_proxy = ((void*)0);
        c->c1.socks_proxy_owned = 0;
    }
}
