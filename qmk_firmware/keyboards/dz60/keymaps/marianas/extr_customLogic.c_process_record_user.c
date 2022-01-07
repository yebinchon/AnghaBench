
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int keyrecord_t ;


 scalar_t__ handleSmartMacros (int ,int *) ;
 scalar_t__ printSqlVerbs (int ,int *) ;
 scalar_t__ storeShiftState (int ,int *) ;
 scalar_t__ updateLayerState (int ,int *) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record)
{
  return
    storeShiftState(keycode, record) &&
    printSqlVerbs(keycode, record) &&
    updateLayerState(keycode, record) &&
    handleSmartMacros(keycode, record);
}
