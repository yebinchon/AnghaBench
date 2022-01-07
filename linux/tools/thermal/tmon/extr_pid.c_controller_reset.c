
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double y_k; } ;


 int LOG_DEBUG ;
 TYPE_1__ p_param ;
 int set_ctrl_state (int ) ;
 int syslog (int ,char*) ;
 double xk_1 ;
 double xk_2 ;

void controller_reset(void)
{

 syslog(LOG_DEBUG, "TC inactive, relax p-state\n");
 p_param.y_k = 0.0;
 xk_1 = 0.0;
 xk_2 = 0.0;
 set_ctrl_state(0);
}
