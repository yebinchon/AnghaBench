
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int dip_switch_update_user (int ,int) ;

__attribute__((weak)) void dip_switch_update_kb(uint8_t index, bool active) { dip_switch_update_user(index, active); }
