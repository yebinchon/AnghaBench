
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socks_proxy_info {int dummy; } ;


 int free (struct socks_proxy_info*) ;

void
socks_proxy_close(struct socks_proxy_info *sp)
{
    free(sp);
}
