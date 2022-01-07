
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_custom {char const* server; } ;



__attribute__((used)) static const char *rtmp_custom_url(void *data)
{
 struct rtmp_custom *service = data;
 return service->server;
}
