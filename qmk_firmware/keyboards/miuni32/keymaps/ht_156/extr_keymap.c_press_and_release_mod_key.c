
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int register_code (int ) ;
 int unregister_code (int ) ;

void press_and_release_mod_key(uint8_t mod, uint8_t code)
{
    register_code(mod);
    register_code(code);
    unregister_code(code);
    unregister_code(mod);
}
