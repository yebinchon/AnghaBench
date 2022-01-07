
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ping_auto_globals_mask; } ;


 TYPE_1__* ZCSG (int ) ;
 int preload_script ;
 int zend_accel_set_auto_globals (scalar_t__) ;

__attribute__((used)) static void preload_activate(void)
{
 if (ZCSG(preload_script)->ping_auto_globals_mask) {
  zend_accel_set_auto_globals(ZCSG(preload_script)->ping_auto_globals_mask);
 }
}
