
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_proxy_info {int dummy; } ;


 int free (struct http_proxy_info*) ;

void
http_proxy_close(struct http_proxy_info *hp)
{
    free(hp);
}
