
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CharacterMatrix {int dummy; } ;
typedef int led ;
typedef int buf ;
 int PSTR (char*) ;
 int USB_DeviceState ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 scalar_t__ debug_enable ;
 int display ;
 int host_keyboard_leds () ;
 int layer_state ;
 int matrix_clear (struct CharacterMatrix*) ;
 int matrix_update (int *,struct CharacterMatrix*) ;
 int matrix_write (struct CharacterMatrix*,char*) ;
 int matrix_write_P (struct CharacterMatrix*,int ) ;
 int snprintf (char*,int,char*,...) ;

void iota_gfx_task_user(void) {






  struct CharacterMatrix matrix;

  matrix_clear(&matrix);
  matrix_write_P(&matrix, PSTR("USB: "));
  char buf[40];
  snprintf(buf,sizeof(buf), "Undef-%ld", layer_state);
  matrix_write_P(&matrix, PSTR("\n\nLayer: "));
    switch (layer_state) {
        case 130:
           matrix_write_P(&matrix, PSTR("Default"));
           break;
        case 128:
           matrix_write_P(&matrix, PSTR("Raise"));
           break;
        case 129:
           matrix_write_P(&matrix, PSTR("Lower"));
           break;
        case 131:
           matrix_write_P(&matrix, PSTR("ADJUST"));
           break;
        default:
           matrix_write(&matrix, buf);
 }


  char led[40];
    snprintf(led, sizeof(led), "\n%s  %s  %s",
            (host_keyboard_leds() & (1<<USB_LED_NUM_LOCK)) ? "NUMLOCK" : "       ",
            (host_keyboard_leds() & (1<<USB_LED_CAPS_LOCK)) ? "CAPS" : "    ",
            (host_keyboard_leds() & (1<<USB_LED_SCROLL_LOCK)) ? "SCLK" : "    ");
  matrix_write(&matrix, led);
  matrix_update(&display, &matrix);
}
