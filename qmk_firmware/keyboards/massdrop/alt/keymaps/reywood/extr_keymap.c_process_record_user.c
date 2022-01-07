
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int ANIMATION_SPEED_STEP ;
 int BREATHE_MIN_STEP ;




 int I2C3733_Control_Set (int) ;
 scalar_t__ LED_GCR_MAX ;
 scalar_t__ LED_GCR_STEP ;
 int LED_MODE_MAX_INDEX ;
 int LED_MODE_NORMAL ;
 int MODS_CTRL ;
 int MODS_SHIFT ;
 int TOGGLE_FLAG_AND_PRINT (int ,char*) ;


 int breathe_dir ;
 int debug_enable ;
 int debug_keyboard ;
 int debug_matrix ;
 int debug_mouse ;
 scalar_t__ gcr_breathe ;
 scalar_t__ gcr_desired ;
 int led_animation_breathe_cur ;
 int led_animation_breathing ;
 int led_animation_direction ;
 int led_animation_id ;
 int led_animation_speed ;
 int led_enabled ;
 int led_lighting_mode ;
 int led_setups_count ;
 int reset_keyboard () ;
 int rgb_matrix_record_key_press (TYPE_2__*) ;
 int timer_elapsed32 (int ) ;
 int timer_read32 () ;
 int usb_extra_manual ;
 int usb_gcr_auto ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  static uint32_t key_timer;

  rgb_matrix_record_key_press(record);

  switch (keycode) {
    case 141:
      if (record->event.pressed) {
        if (LED_GCR_STEP > LED_GCR_MAX - gcr_desired) gcr_desired = LED_GCR_MAX;
        else gcr_desired += LED_GCR_STEP;
        if (led_animation_breathing) gcr_breathe = gcr_desired;
      }
      return 0;
    case 142:
      if (record->event.pressed) {
        if (LED_GCR_STEP > gcr_desired) gcr_desired = 0;
        else gcr_desired -= LED_GCR_STEP;
        if (led_animation_breathing) gcr_breathe = gcr_desired;
      }
      return 0;
    case 136:
      if (record->event.pressed) {
        if (led_animation_id == led_setups_count - 1) led_animation_id = 0;
        else led_animation_id++;
      }
      return 0;
    case 135:
      if (record->event.pressed) {
        if (led_animation_id == 0) led_animation_id = led_setups_count - 1;
        else led_animation_id--;
      }
      return 0;
    case 137:
      if (record->event.pressed) {
        led_animation_speed += ANIMATION_SPEED_STEP;
      }
      return 0;
    case 138:
      if (record->event.pressed) {
        led_animation_speed -= ANIMATION_SPEED_STEP;
        if (led_animation_speed < 0) led_animation_speed = 0;
      }
      return 0;
    case 133:
      if (record->event.pressed) {
        led_lighting_mode++;
        if (led_lighting_mode > LED_MODE_MAX_INDEX) led_lighting_mode = LED_MODE_NORMAL;
      }
      return 0;
    case 132:
      if (record->event.pressed) {
        led_enabled = !led_enabled;
        I2C3733_Control_Set(led_enabled);
      }
      return 0;
    case 139:
      if (record->event.pressed) {
        led_enabled = 1;
        I2C3733_Control_Set(led_enabled);
      }
      return 0;
    case 140:
      if (record->event.pressed) {
        led_enabled = 0;
        I2C3733_Control_Set(led_enabled);
      }
      return 0;
    case 134:
      if (record->event.pressed) {
        led_animation_breathing = !led_animation_breathing;
        if (led_animation_breathing) {
          gcr_breathe = gcr_desired;
          led_animation_breathe_cur = BREATHE_MIN_STEP;
          breathe_dir = 1;
        }
      }
      return 0;
    case 131:
      if (record->event.pressed) {
        led_animation_direction = !led_animation_direction;
      }
      return 0;
    case 128:
      if (record->event.pressed && MODS_SHIFT && MODS_CTRL) {
        TOGGLE_FLAG_AND_PRINT(usb_extra_manual, "USB extra port manual mode");
      }
      return 0;
    case 129:
      if (record->event.pressed && MODS_SHIFT && MODS_CTRL) {
        TOGGLE_FLAG_AND_PRINT(usb_gcr_auto, "USB GCR auto mode");
      }
      return 0;
    case 143:
      if (record->event.pressed) {
        TOGGLE_FLAG_AND_PRINT(debug_enable, "Debug mode");
      }
      return 0;
    case 144:
      if (record->event.pressed) {
        TOGGLE_FLAG_AND_PRINT(debug_matrix, "Debug matrix");
      }
      return 0;
    case 146:
      if (record->event.pressed) {
        TOGGLE_FLAG_AND_PRINT(debug_keyboard, "Debug keyboard");
      }
      return 0;
    case 145:
      if (record->event.pressed) {
        TOGGLE_FLAG_AND_PRINT(debug_mouse, "Debug mouse");
      }
      return 0;
    case 130:
      if (record->event.pressed) {
        key_timer = timer_read32();
      } else {
        if (timer_elapsed32(key_timer) >= 500) {
          reset_keyboard();
        }
      }
      return 0;
    default:
      return 1;
  }
}
