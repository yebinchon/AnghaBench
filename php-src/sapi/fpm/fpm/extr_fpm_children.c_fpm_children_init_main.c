
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {int emergency_restart_threshold; scalar_t__ emergency_restart_interval; } ;


 int FPM_CLEANUP_ALL ;
 int fpm_children_cleanup ;
 scalar_t__ fpm_cleanup_add (int ,int ,int ) ;
 TYPE_1__ fpm_global_config ;
 int last_faults ;
 int malloc (int) ;
 int memset (int ,int ,int) ;

int fpm_children_init_main()
{
 if (fpm_global_config.emergency_restart_threshold &&
  fpm_global_config.emergency_restart_interval) {

  last_faults = malloc(sizeof(time_t) * fpm_global_config.emergency_restart_threshold);

  if (!last_faults) {
   return -1;
  }

  memset(last_faults, 0, sizeof(time_t) * fpm_global_config.emergency_restart_threshold);
 }

 if (0 > fpm_cleanup_add(FPM_CLEANUP_ALL, fpm_children_cleanup, 0)) {
  return -1;
 }

 return 0;
}
