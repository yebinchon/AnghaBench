
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int count; int* codes; } ;


 int UNICODE_TYPE_DELAY ;
 TYPE_1__ qk_ucis_state ;
 int register_code (int) ;
 int unregister_code (int) ;
 int wait_ms (int ) ;

__attribute__((weak)) void qk_ucis_symbol_fallback(void) {
    for (uint8_t i = 0; i < qk_ucis_state.count - 1; i++) {
        uint8_t code = qk_ucis_state.codes[i];
        register_code(code);
        unregister_code(code);
        wait_ms(UNICODE_TYPE_DELAY);
    }
}
