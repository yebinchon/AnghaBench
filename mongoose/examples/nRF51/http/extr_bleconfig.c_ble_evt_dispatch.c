
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ble_evt_t ;


 int ble_ipsp_evt_handler (int *) ;
 int on_ble_evt (int *) ;

__attribute__((used)) static void ble_evt_dispatch(ble_evt_t * p_ble_evt)
{
  ble_ipsp_evt_handler(p_ble_evt);
  on_ble_evt(p_ble_evt);
}
