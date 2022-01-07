
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_common {struct rtmp_common* key; struct rtmp_common* output; struct rtmp_common* server; struct rtmp_common* service; } ;


 int bfree (struct rtmp_common*) ;

__attribute__((used)) static void rtmp_common_destroy(void *data)
{
 struct rtmp_common *service = data;

 bfree(service->service);
 bfree(service->server);
 bfree(service->output);
 bfree(service->key);
 bfree(service);
}
