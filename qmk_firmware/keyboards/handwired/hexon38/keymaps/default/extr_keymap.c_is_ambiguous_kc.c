
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;


 scalar_t__ mod_config (int) ;

bool is_ambiguous_kc(uint16_t kc) {


    uint8_t mod = mod_config((kc >> 0x8) & 0x1F);
    return mod != 0;
}
