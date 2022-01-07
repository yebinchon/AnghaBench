
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int ACTION_FUNCTION_TAP (int) ;


 int * fn_actions ;
 int pgm_read_word (int *) ;

uint16_t keymap_function_id_to_action( uint16_t function_id )
{



 if ( function_id >= 0x0F00 && function_id <= 0x0FFF )
 {
  uint8_t id = function_id & 0xFF;
  switch ( id ) {
   case 129:
   case 128:
   {
    return ACTION_FUNCTION_TAP(id);
    break;
   }
   default:
    break;
  }
 }

 return pgm_read_word(&fn_actions[function_id]);
}
