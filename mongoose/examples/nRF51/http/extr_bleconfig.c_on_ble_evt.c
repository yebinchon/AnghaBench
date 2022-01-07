
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int evt_id; } ;
struct TYPE_5__ {TYPE_1__ header; } ;
typedef TYPE_2__ ble_evt_t ;


 int APPL_LOG (char*) ;


 int advertising_start () ;

__attribute__((used)) static void on_ble_evt(ble_evt_t * p_ble_evt)
{
  switch (p_ble_evt->header.evt_id)
  {
    case 129:
      APPL_LOG ("[APPL]: Connected.\r\n");
      break;
    case 128:
      APPL_LOG ("[APPL]: Disconnected.\r\n");
      advertising_start();
      break;
    default:
      break;
  }
}
