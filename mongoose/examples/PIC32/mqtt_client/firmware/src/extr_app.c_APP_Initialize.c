
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int APP_STATE_INIT ;
 int DRV_RTCC_Start () ;
 TYPE_1__ appData ;
 int mg_mgr_init (int *,int *) ;
 int mgr ;

void APP_Initialize(void) {
  appData.state = APP_STATE_INIT;
  DRV_RTCC_Start();
  mg_mgr_init(&mgr, ((void*)0));
}
