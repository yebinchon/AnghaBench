
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;


 int BLUE_LED ;

 int GREEN_LED ;


 int RED_LED ;

 int biton32 (int ) ;
 int turn_off_leds () ;
 int turn_on_led (int ) ;

layer_state_t layer_state_set_user(layer_state_t state)
{
    turn_off_leds();

    switch (biton32(state))
    {
    case 129:
 break;

    case 130:
 turn_on_led(RED_LED);
 break;

    case 128:
 turn_on_led(BLUE_LED);
 break;

    case 131:
 turn_on_led(GREEN_LED);
 break;
 }
    return state;
}
