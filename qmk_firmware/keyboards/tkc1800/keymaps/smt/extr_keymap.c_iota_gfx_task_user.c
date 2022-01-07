
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct CharacterMatrix {int dummy; } ;
typedef int led ;
typedef int buf ;


 int PSTR (char*) ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int biton32 (int ) ;
 scalar_t__ debug_enable ;
 int display ;
 int host_keyboard_leds () ;
 char** layer_lookup ;
 int layer_state ;
 int matrix_clear (struct CharacterMatrix*) ;
 int matrix_update (int *,struct CharacterMatrix*) ;
 int matrix_write (struct CharacterMatrix*,char*) ;
 int matrix_write_P (struct CharacterMatrix*,int ) ;
 int snprintf (char*,int,char*,...) ;

void iota_gfx_task_user(void) {






  struct CharacterMatrix matrix;

  matrix_clear(&matrix);
  matrix_write_P(&matrix, PSTR("TKC1800"));

  uint8_t layer = biton32(layer_state);

  char buf[40];
  snprintf(buf,sizeof(buf), "Undef-%d", layer);
  matrix_write_P(&matrix, PSTR("\nLayer: "));
  matrix_write(&matrix, layer_lookup[layer]);


  char led[40];
    snprintf(led, sizeof(led), "\n\n%s  %s  %s",
            (host_keyboard_leds() & (1<<USB_LED_NUM_LOCK)) ? "NUMLOCK" : "       ",
            (host_keyboard_leds() & (1<<USB_LED_CAPS_LOCK)) ? "CAPS" : "    ",
            (host_keyboard_leds() & (1<<USB_LED_SCROLL_LOCK)) ? "SCLK" : "    ");
  matrix_write(&matrix, led);
  matrix_update(&display, &matrix);
}
