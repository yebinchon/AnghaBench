
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_proxy_info {char* proxy_authenticate; } ;


 int free (char*) ;

__attribute__((used)) static void
store_proxy_authenticate(struct http_proxy_info *p, char *data)
{
    if (p->proxy_authenticate)
    {
        free(p->proxy_authenticate);
    }
    p->proxy_authenticate = data;
}
