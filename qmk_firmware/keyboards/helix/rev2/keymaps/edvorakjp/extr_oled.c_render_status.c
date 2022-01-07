
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct CharacterMatrix {int dummy; } ;
typedef int led ;
typedef int buf ;
struct TYPE_4__ {int member_0; int member_1; int member_2; } ;
struct TYPE_3__ {int member_0; int member_1; int member_2; } ;



 int PSTR (char*) ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;


 int biton32 (int ) ;
 scalar_t__ get_enable_kc_lang () ;
 int host_keyboard_leds () ;
 int layer_state ;
 int matrix_write (struct CharacterMatrix*,char*) ;
 int matrix_write_P (struct CharacterMatrix*,int ) ;
 int snprintf (char*,int,char*,char*,...) ;

void render_status(struct CharacterMatrix *matrix) {


  static char logo[][2][3] = {{{0x95,0x96,0},{0xb5,0xb6,0}},{{0x97,0x98,0},{0xb7,0xb8,0}}};
  int mode_number = get_enable_kc_lang() ? 0 : 1;
  matrix_write(matrix, logo[mode_number][0]);
  matrix_write(matrix, "\n");
  matrix_write(matrix, logo[mode_number][1]);


  char buf[40];
  snprintf(buf,sizeof(buf), "Undef-%ld", layer_state);
  matrix_write_P(matrix, PSTR("\nLayer: "));
  switch (biton32(layer_state)) {
    case 130:
      matrix_write_P(matrix, PSTR("Default"));
      break;
    case 128:
      matrix_write_P(matrix, PSTR("Raise"));
      break;
    case 129:
      matrix_write_P(matrix, PSTR("Lower"));
      break;
    default:
      matrix_write(matrix, buf);
  }


  char led[40];
  snprintf(led, sizeof(led), "\n%s %s %s",
      (host_keyboard_leds() & (1<<USB_LED_NUM_LOCK)) ? "NMLK" : "    ",
      (host_keyboard_leds() & (1<<USB_LED_CAPS_LOCK)) ? "CAPS" : "    ",
      (host_keyboard_leds() & (1<<USB_LED_SCROLL_LOCK)) ? "SCLK" : "    ");
  matrix_write(matrix, led);
}
