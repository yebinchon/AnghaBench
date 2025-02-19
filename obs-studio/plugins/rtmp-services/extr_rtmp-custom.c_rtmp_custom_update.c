
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_custom {void* password; void* username; int use_auth; void* key; void* server; } ;
typedef int obs_data_t ;


 int bfree (void*) ;
 void* bstrdup (int ) ;
 int obs_data_get_bool (int *,char*) ;
 int obs_data_get_string (int *,char*) ;

__attribute__((used)) static void rtmp_custom_update(void *data, obs_data_t *settings)
{
 struct rtmp_custom *service = data;

 bfree(service->server);
 bfree(service->key);

 service->server = bstrdup(obs_data_get_string(settings, "server"));
 service->key = bstrdup(obs_data_get_string(settings, "key"));
 service->use_auth = obs_data_get_bool(settings, "use_auth");
 service->username = bstrdup(obs_data_get_string(settings, "username"));
 service->password = bstrdup(obs_data_get_string(settings, "password"));
}
