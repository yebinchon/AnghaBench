
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;


 int * fn_actions ;
 size_t pgm_read_word (int *) ;

__attribute__((weak)) uint16_t keymap_function_id_to_action(uint16_t function_id) {




#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Warray-bounds"
 return pgm_read_word(&fn_actions[function_id]);
#pragma GCC diagnostic pop
}
