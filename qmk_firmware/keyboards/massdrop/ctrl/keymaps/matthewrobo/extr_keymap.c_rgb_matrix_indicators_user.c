
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int v; int s; int h; } ;
struct TYPE_10__ {TYPE_1__ hsv; scalar_t__ enable; } ;
struct TYPE_9__ {unsigned int s; int v; int h; int member_2; int member_1; int member_0; } ;
struct TYPE_8__ {int r; int g; int b; } ;
typedef TYPE_2__ RGB ;
typedef TYPE_3__ HSV ;


 int USB_LED_NUM_LOCK ;


 int autoshift_enabled ;
 int biton32 (int ) ;
 int g_suspend_state ;
 int host_keyboard_leds () ;
 TYPE_2__ hsv_to_rgb (TYPE_3__) ;
 int layer_state ;
 TYPE_4__ rgb_matrix_config ;
 int rgb_matrix_set_color (int,int,int,int) ;

void rgb_matrix_indicators_user(void)
{
 uint8_t this_led = host_keyboard_leds();

 if (!g_suspend_state && rgb_matrix_config.enable) {
  switch (biton32(layer_state)) {
  case 128:
   if (this_led & (1 << USB_LED_NUM_LOCK)) {
    rgb_matrix_set_color(41, 0xFF, 0x00, 0x00);
   } else {
    rgb_matrix_set_color(41, 0x00, 0x00, 0x00);
   }


   rgb_matrix_set_color(50, 0xFF, 0xFF, 0xFF);
   rgb_matrix_set_color(101, 0xFF, 0xFF, 0xFF);

   rgb_matrix_set_color(36, 0xFF, 0x00, 0x00);
   rgb_matrix_set_color(52, 0xFF, 0x00, 0x00);
   rgb_matrix_set_color(53, 0xFF, 0x00, 0x00);
   rgb_matrix_set_color(54, 0xFF, 0x00, 0x00);

   rgb_matrix_set_color(35, 0x00, 0xFF, 0x00);
   rgb_matrix_set_color(37, 0x00, 0xFF, 0x00);

   rgb_matrix_set_color(34, 0x00, 0x00, 0xFF);
   rgb_matrix_set_color(51, 0x00, 0x00, 0xFF);

   rgb_matrix_set_color(23, 0xFF, 0xFF, 0x00);
   rgb_matrix_set_color(24, 0xFF, 0xFF, 0x00);
   rgb_matrix_set_color(25, 0xFF, 0xFF, 0x00);
   rgb_matrix_set_color(40, 0xFF, 0xFF, 0x00);
   rgb_matrix_set_color(42, 0xFF, 0xFF, 0x00);
   rgb_matrix_set_color(57, 0xFF, 0xFF, 0x00);
   rgb_matrix_set_color(58, 0xFF, 0xFF, 0x00);
   rgb_matrix_set_color(59, 0xFF, 0xFF, 0x00);

   rgb_matrix_set_color(69, 0xFF, 0x00, 0x00);
   rgb_matrix_set_color(70, 0xFF, 0x00, 0x00);
   rgb_matrix_set_color(71, 0xFF, 0x00, 0x00);

   rgb_matrix_set_color(72, 0x00, 0x00, 0xFF);

   rgb_matrix_set_color(26, 0x00, 0x00, 0xFF);
   rgb_matrix_set_color(27, 0x00, 0x00, 0xFF);
   rgb_matrix_set_color(28, 0x00, 0x00, 0xFF);
   rgb_matrix_set_color(43, 0x00, 0x00, 0xFF);
   rgb_matrix_set_color(46, 0x00, 0x00, 0xFF);
   rgb_matrix_set_color(60, 0x00, 0x00, 0xFF);
   rgb_matrix_set_color(61, 0x00, 0x00, 0xFF);
   rgb_matrix_set_color(73, 0x00, 0x00, 0xFF);
   break;

  case 129: {
   HSV hsv = { rgb_matrix_config.hsv.h, rgb_matrix_config.hsv.s, rgb_matrix_config.hsv.v };
   HSV hui = hsv;
   HSV hud = hsv;
   HSV sai = hsv;
   HSV sad = hsv;
   HSV vai = hsv;
   HSV vad = hsv;
   hui.h = hsv.h + 8;
   hud.h = hsv.h - 8;
   sai.s = hsv.s + 16 > 255 ? 255u : hsv.s + 16;
   sad.s = hsv.s - 16 < 0 ? 0 : hsv.s - 16;
   vai.v = hsv.v + 16 > 255 ? 255 : hsv.v + 16;
   vad.v = hsv.v - 16 < 0 ? 0 : hsv.v - 16;
   RGB rgb = hsv_to_rgb(hsv);
   RGB rgbHUI = hsv_to_rgb(hui);
   RGB rgbHUD = hsv_to_rgb(hud);
   RGB rgbSAI = hsv_to_rgb(sai);
   RGB rgbSAD = hsv_to_rgb(sad);
   RGB rgbVAI = hsv_to_rgb(vai);
   RGB rgbVAD = hsv_to_rgb(vad);
   rgb_matrix_set_color(81, 0xFF, 0xFF, 0xFF);
   rgb_matrix_set_color(91, 0xFF, 0xFF, 0xFF);
   rgb_matrix_set_color(93, 0x00, 0x00, 0x00);
   rgb_matrix_set_color(94, rgb.r, rgb.g, rgb.b);
   rgb_matrix_set_color(95, rgb.r, rgb.g, rgb.b);
   rgb_matrix_set_color(96, 0x00, 0x00, 0x00);
   rgb_matrix_set_color(68, 0xFF, 0x00, 0x00);
   rgb_matrix_set_color(69, 0xFF, 0x00, 0x40);
   rgb_matrix_set_color(32, 0x00, 0x80, 0xFF);
   rgb_matrix_set_color(49, 0x00, 0x80, 0xFF);
   rgb_matrix_set_color(13, 0xFF, 0x00, 0x00);
   rgb_matrix_set_color(30, 0xFF, 0x00, 0x00);
   rgb_matrix_set_color(47, 0xFF, 0x40, 0x00);
   rgb_matrix_set_color(48, 0xFF, 0x40, 0x00);
   rgb_matrix_set_color(14, 0x00, 0xFF, 0x00);
   rgb_matrix_set_color(31, 0x00, 0xFF, 0x00);

   if (this_led & (1 << !autoshift_enabled)) {
    rgb_matrix_set_color(15, 0xFF, 0x00, 0x00);
   } else {
    rgb_matrix_set_color(15, 0xFF, 0xFF, 0x00);
   }

   rgb_matrix_set_color(44, 0xFF, 0x80, 0x00);
   rgb_matrix_set_color(45, 0xFF, 0x80, 0x00);
   rgb_matrix_set_color(34, 0xFF, 0x80, 0x00);
   rgb_matrix_set_color(51, 0xFF, 0x80, 0x00);
   rgb_matrix_set_color(63, 0xFF, 0x40, 0x00);
   rgb_matrix_set_color(64, rgb.r, rgb.g, rgb.b);
   rgb_matrix_set_color(36, rgbHUI.r, rgbHUI.g, rgbHUI.b);
   rgb_matrix_set_color(53, rgbHUD.r, rgbHUD.g, rgbHUD.b);
   rgb_matrix_set_color(37, rgbSAI.r, rgbSAI.g, rgbSAI.b);
   rgb_matrix_set_color(54, rgbSAD.r, rgbSAD.g, rgbSAD.b);
   rgb_matrix_set_color(38, rgbVAI.r, rgbVAI.g, rgbVAI.b);
   rgb_matrix_set_color(55, rgbVAD.r, rgbVAD.g, rgbVAD.b);
   rgb_matrix_set_color(79, rgb.r, rgb.g, rgb.b);
   rgb_matrix_set_color(75, rgbVAI.r, rgbVAI.g, rgbVAI.b);
   rgb_matrix_set_color(85, rgbVAD.r, rgbVAD.g, rgbVAD.b);
   rgb_matrix_set_color(35, 0x80, 0x80, 0x80);
   rgb_matrix_set_color(52, 0x80, 0x80, 0x80);
   rgb_matrix_set_color(84, 0x80, 0x80, 0x80);
   rgb_matrix_set_color(86, 0x80, 0x80, 0x80);
   rgb_matrix_set_color(41, 0xF0, 0x00, 0xFF);
   rgb_matrix_set_color(42, 0x00, 0x02, 0xFF);
   rgb_matrix_set_color(57, 0xFF, 0x00, 0x00);
   rgb_matrix_set_color(58, 0x00, 0x00, 0x00);
   rgb_matrix_set_color(59, 0x00, 0xFF, 0xF7);
   rgb_matrix_set_color(70, 0xFF, 0xDA, 0x00);
   rgb_matrix_set_color(71, 0x00, 0xFF, 0x01);
   rgb_matrix_set_color(72, 0xFF, 0xA5, 0x18);
   rgb_matrix_set_color(60, 0x81, 0x3C, 0xFF);
   rgb_matrix_set_color(43, 0xFF, 0xFF, 0xFF);
  }
  break;
  }
 }
}
