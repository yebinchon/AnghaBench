
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_accel_restart_reason ;
struct TYPE_2__ {double memory_consumption; double max_wasted_percentage; } ;


 TYPE_1__ ZCG (int ) ;
 scalar_t__ ZSMMG (int ) ;
 int accel_directives ;
 int wasted_shared_memory ;
 int zend_accel_schedule_restart (int ) ;

void zend_accel_schedule_restart_if_necessary(zend_accel_restart_reason reason)
{
 if ((((double) ZSMMG(wasted_shared_memory)) / ZCG(accel_directives).memory_consumption) >= ZCG(accel_directives).max_wasted_percentage) {
   zend_accel_schedule_restart(reason);
 }
}
