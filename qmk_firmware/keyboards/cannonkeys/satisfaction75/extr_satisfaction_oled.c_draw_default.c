
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int ENCODER_INDICATOR_X ;
 int ENCODER_INDICATOR_Y ;
 scalar_t__ ENC_MODE_CLOCK_SET ;
 scalar_t__ LOCK_DISPLAY_X ;
 int LOCK_DISPLAY_Y ;
 int MATRIX_COLS ;
 scalar_t__ MATRIX_DISPLAY_X ;
 int MATRIX_DISPLAY_Y ;
 int MATRIX_ROWS ;
 scalar_t__ MOD_DISPLAY_X ;
 int MOD_DISPLAY_Y ;
 int MOD_LALT ;
 int MOD_LCTL ;
 int MOD_LGUI ;
 int MOD_LSFT ;
 int NORM ;
 int PIXEL_OFF ;
 int PIXEL_ON ;
 scalar_t__ TIME_DISPLAY_X ;
 int TIME_DISPLAY_Y ;
 int draw_encoder (int ,int ,int) ;
 int draw_layer_section (int ,int ,int) ;
 int draw_pixel (scalar_t__,int,int,int ) ;
 int draw_rect_filled_soft (scalar_t__,int,int,int,int ,int ) ;
 int draw_rect_soft (scalar_t__,int,int,int,int ,int ) ;
 int draw_string (scalar_t__,int,char*,int ,int ,int ) ;
 scalar_t__ encoder_mode ;
 int get_mods () ;
 int hour_config ;
 int last_minute ;
 int led_capslock ;
 int led_scrolllock ;
 int matrix_get_row (int) ;
 int minute_config ;
 int send_buffer () ;
 int sprintf (char*,char*,int) ;

void draw_default(){
  uint8_t hour = last_minute / 60;
  uint16_t minute = last_minute % 60;

  if(encoder_mode == ENC_MODE_CLOCK_SET){
    hour = hour_config;
    minute = minute_config;
  }

  bool is_pm = (hour / 12) > 0;
  hour = hour % 12;
  if (hour == 0){
    hour = 12;
  }
  char hour_str[3] = "";
  char min_str[3] = "";

  sprintf(hour_str, "%02d", hour);
  sprintf(min_str, "%02d", minute);

  uint8_t mods = get_mods();


  draw_layer_section(0,0,1);



  draw_encoder(45, 0, 1);




  for (uint8_t x = 0; x < MATRIX_ROWS; x++) {
    for (uint8_t y = 0; y < MATRIX_COLS; y++) {
      draw_pixel(0 + y + 2, 18 + x + 2,(matrix_get_row(x) & (1 << y)) > 0, NORM);
    }
  }
  draw_rect_soft(0, 18, 19, 9, PIXEL_ON, NORM);

  draw_rect_filled_soft(0 + 14, 18 + 2, 3, 1, PIXEL_ON, NORM);





  if (mods & MOD_LSFT) {
    draw_rect_filled_soft(30 + 0, 18, 5 + (1 * 6), 11, PIXEL_ON, NORM);
    draw_string(30 + 3, 18 + 2, "S", PIXEL_OFF, NORM, 0);
  } else {
    draw_string(30 + 3, 18 + 2, "S", PIXEL_ON, NORM, 0);
  }
  if (mods & MOD_LCTL) {
    draw_rect_filled_soft(30 + 10, 18, 5 + (1 * 6), 11, PIXEL_ON, NORM);
    draw_string(30 + 13, 18 + 2, "C", PIXEL_OFF, NORM, 0);
  } else {
    draw_string(30 + 13, 18 + 2, "C", PIXEL_ON, NORM, 0);
  }
  if (mods & MOD_LALT) {
    draw_rect_filled_soft(30 + 20, 18, 5 + (1 * 6), 11, PIXEL_ON, NORM);
    draw_string(30 + 23, 18 + 2, "A", PIXEL_OFF, NORM, 0);
  } else {
    draw_string(30 + 23, 18 + 2, "A", PIXEL_ON, NORM, 0);
  }
  if (mods & MOD_LGUI) {
    draw_rect_filled_soft(30 + 30, 18, 5 + (1 * 6), 11, PIXEL_ON, NORM);
    draw_string(30 + 33, 18 + 2, "G", PIXEL_OFF, NORM, 0);
  } else {
    draw_string(30 + 33, 18 + 2, "G", PIXEL_ON, NORM, 0);
  }





  if (led_capslock == 1) {
    draw_rect_filled_soft(100 + 0, 0, 5 + (3 * 6), 9, PIXEL_ON, NORM);
    draw_string(100 + 3, 0 +1, "CAP", PIXEL_OFF, NORM, 0);
  } else if (led_capslock == 0) {
    draw_string(100 + 3, 0 +1, "CAP", PIXEL_ON, NORM, 0);
  }

  if (led_scrolllock == 1) {
    draw_rect_filled_soft(100 + 0, 0 + 11, 5 + (3 * 6), 9, PIXEL_ON, NORM);
    draw_string(100 + 3, 0 + 11 +1, "SCR", PIXEL_OFF, NORM, 0);
  } else if (led_scrolllock == 0) {
    draw_string(100 + 3, 0 + 11 +1, "SCR", PIXEL_ON, NORM, 0);
  }



  draw_string(82, 22, hour_str, PIXEL_ON, NORM, 0);
  draw_string(82 + 11, 22, ":", PIXEL_ON, NORM, 0);
  draw_string(82 + 15, 22, min_str, PIXEL_ON, NORM, 0);
  if(is_pm){
    draw_string(82 + 27, 22, "pm", PIXEL_ON, NORM, 0);
  } else{
    draw_string(82 + 27, 22, "am", PIXEL_ON, NORM, 0);
  }

  send_buffer();
}
