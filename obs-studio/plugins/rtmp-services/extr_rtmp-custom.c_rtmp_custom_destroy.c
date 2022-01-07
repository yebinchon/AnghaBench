
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_custom {struct rtmp_custom* password; struct rtmp_custom* username; struct rtmp_custom* key; struct rtmp_custom* server; } ;


 int bfree (struct rtmp_custom*) ;

__attribute__((used)) static void rtmp_custom_destroy(void *data)
{
 struct rtmp_custom *service = data;

 bfree(service->server);
 bfree(service->key);
 bfree(service->username);
 bfree(service->password);
 bfree(service);
}
