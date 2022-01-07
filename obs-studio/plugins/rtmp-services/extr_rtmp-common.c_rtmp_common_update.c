
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_common {int * output; int * service; int * key; int * server; } ;
typedef int obs_data_t ;
typedef int json_t ;


 int bfree (int *) ;
 void* bstrdup (char const*) ;
 int ensure_valid_url (struct rtmp_common*,int *,int *) ;
 int * find_service (int *,int *,char const**) ;
 char* get_string_val (int *,char*) ;
 int json_decref (int *) ;
 scalar_t__ json_is_object (int *) ;
 int * json_object_get (int *,char*) ;
 char* obs_data_get_string (int *,char*) ;
 int * open_services_file () ;

__attribute__((used)) static void rtmp_common_update(void *data, obs_data_t *settings)
{
 struct rtmp_common *service = data;

 bfree(service->service);
 bfree(service->server);
 bfree(service->output);
 bfree(service->key);

 service->service = bstrdup(obs_data_get_string(settings, "service"));
 service->server = bstrdup(obs_data_get_string(settings, "server"));
 service->key = bstrdup(obs_data_get_string(settings, "key"));
 service->output = ((void*)0);

 json_t *root = open_services_file();
 if (root) {
  const char *new_name;
  json_t *serv = find_service(root, service->service, &new_name);

  if (new_name) {
   bfree(service->service);
   service->service = bstrdup(new_name);
  }

  if (serv) {
   json_t *rec = json_object_get(serv, "recommended");
   if (json_is_object(rec)) {
    const char *out = get_string_val(rec, "output");
    if (out)
     service->output = bstrdup(out);
   }

   ensure_valid_url(service, serv, settings);
  }
 }
 json_decref(root);

 if (!service->output)
  service->output = bstrdup("rtmp_output");
}
