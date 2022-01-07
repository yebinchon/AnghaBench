
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int name; } ;


 int ZLOG_ERROR ;
 TYPE_1__* fpm_event_devpoll_module () ;
 TYPE_1__* fpm_event_epoll_module () ;
 TYPE_1__* fpm_event_kqueue_module () ;
 TYPE_1__* fpm_event_poll_module () ;
 TYPE_1__* fpm_event_port_module () ;
 TYPE_1__* fpm_event_select_module () ;
 TYPE_1__* module ;
 scalar_t__ strcasecmp (int ,char*) ;
 int zlog (int ,char*,...) ;

int fpm_event_pre_init(char *machanism)
{

 module = fpm_event_kqueue_module();
 if (module) {
  if (!machanism || strcasecmp(module->name, machanism) == 0) {
   return 0;
  }
 }


 module = fpm_event_port_module();
 if (module) {
  if (!machanism || strcasecmp(module->name, machanism) == 0) {
   return 0;
  }
 }


 module = fpm_event_epoll_module();
 if (module) {
  if (!machanism || strcasecmp(module->name, machanism) == 0) {
   return 0;
  }
 }


 module = fpm_event_devpoll_module();
 if (module) {
  if (!machanism || strcasecmp(module->name, machanism) == 0) {
   return 0;
  }
 }


 module = fpm_event_poll_module();
 if (module) {
  if (!machanism || strcasecmp(module->name, machanism) == 0) {
   return 0;
  }
 }


 module = fpm_event_select_module();
 if (module) {
  if (!machanism || strcasecmp(module->name, machanism) == 0) {
   return 0;
  }
 }

 if (machanism) {
  zlog(ZLOG_ERROR, "event mechanism '%s' is not available on this system", machanism);
 } else {
  zlog(ZLOG_ERROR, "unable to find a suitable event mechanism on this system");
 }
 return -1;
}
