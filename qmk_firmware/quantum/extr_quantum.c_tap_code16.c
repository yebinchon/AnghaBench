
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int TAP_CODE_DELAY ;
 int register_code16 (int ) ;
 int unregister_code16 (int ) ;
 int wait_ms (int ) ;

void tap_code16(uint16_t code) {
    register_code16(code);



    unregister_code16(code);
}
