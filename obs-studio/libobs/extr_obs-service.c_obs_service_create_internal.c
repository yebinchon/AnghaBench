
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct obs_service_info {int (* create ) (int ,struct obs_service*) ;} ;
struct TYPE_8__ {int data; int settings; } ;
struct obs_service {TYPE_3__ context; TYPE_1__* control; struct obs_service_info info; } ;
typedef int obs_weak_service_t ;
typedef struct obs_service obs_service_t ;
typedef int obs_data_t ;
struct TYPE_7__ {int first_service; int services_mutex; } ;
struct TYPE_9__ {TYPE_2__ data; } ;
struct TYPE_6__ {struct obs_service* service; } ;


 int LOG_DEBUG ;
 int LOG_ERROR ;
 int OBS_OBJ_TYPE_SERVICE ;
 int bfree (struct obs_service*) ;
 int blog (int ,char*,char const*,...) ;
 void* bzalloc (int) ;
 struct obs_service_info* find_service (char const*) ;
 TYPE_5__* obs ;
 int obs_context_data_init (TYPE_3__*,int ,int *,char const*,int *,int) ;
 int obs_context_data_insert (TYPE_3__*,int *,int *) ;
 int stub1 (int ,struct obs_service*) ;

__attribute__((used)) static obs_service_t *obs_service_create_internal(const char *id,
        const char *name,
        obs_data_t *settings,
        obs_data_t *hotkey_data,
        bool private)
{
 const struct obs_service_info *info = find_service(id);
 struct obs_service *service;

 if (!info) {
  blog(LOG_ERROR, "Service '%s' not found", id);
  return ((void*)0);
 }

 service = bzalloc(sizeof(struct obs_service));

 if (!obs_context_data_init(&service->context, OBS_OBJ_TYPE_SERVICE,
       settings, name, hotkey_data, private)) {
  bfree(service);
  return ((void*)0);
 }

 service->info = *info;
 service->context.data =
  service->info.create(service->context.settings, service);
 if (!service->context.data)
  blog(LOG_ERROR, "Failed to create service '%s'!", name);

 service->control = bzalloc(sizeof(obs_weak_service_t));
 service->control->service = service;

 obs_context_data_insert(&service->context, &obs->data.services_mutex,
    &obs->data.first_service);

 blog(LOG_DEBUG, "service '%s' (%s) created", name, id);
 return service;
}
