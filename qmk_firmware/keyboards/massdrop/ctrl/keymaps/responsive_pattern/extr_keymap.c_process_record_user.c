
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_9__ {int alive; int led_id; void* time; } ;
struct TYPE_8__ {int PATTERN_INDEX; int TRAVEL_DISTANCE; int COLOR_PATTERN_INDEX; int WAVE_PERIOD; int WAVE_FRONT_WIDTH; } ;


 int ANIMATION_SPEED_STEP ;
 int BREATHE_MIN_STEP ;
 int COLOR_PATTERNS_COUNT ;




 int I2C3733_Control_Set (int) ;
 TYPE_5__* KEY_STROKES ;
 int KEY_STROKES_LENGTH ;
 scalar_t__ LED_GCR_MAX ;
 scalar_t__ LED_GCR_STEP ;
 int LED_MODE_MAX_INDEX ;
 int LED_MODE_NORMAL ;
 int MODS_CTRL ;
 int MODS_SHIFT ;
 int PATTERN_COUNT ;
 int TOGGLE_FLAG_AND_PRINT (int ,char*) ;
 TYPE_4__ USER_CONFIG ;


 int breathe_dir ;
 int debug_enable ;
 int debug_keyboard ;
 int debug_matrix ;
 int debug_mouse ;
 scalar_t__ gcr_breathe ;
 scalar_t__ gcr_desired ;
 int ktli (int) ;
 int led_animation_breathe_cur ;
 int led_animation_breathing ;
 int led_animation_direction ;
 int led_animation_id ;
 int led_animation_speed ;
 int led_enabled ;
 int led_lighting_mode ;
 int led_setups_count ;
 int refresh_color_pattern_indicators () ;
 int refresh_pattern_indicators () ;
 int reset_keyboard () ;
 int timer_elapsed32 (void*) ;
 void* timer_read32 () ;
 int usb_extra_manual ;
 int usb_gcr_auto ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    static uint32_t key_timer;


    switch (keycode) {
        case 149:
            if (record->event.pressed) {
                if (LED_GCR_STEP > LED_GCR_MAX - gcr_desired) gcr_desired = LED_GCR_MAX;
                else gcr_desired += LED_GCR_STEP;
                if (led_animation_breathing) gcr_breathe = gcr_desired;
            }
            return 0;
        case 150:
            if (record->event.pressed) {
                if (LED_GCR_STEP > gcr_desired) gcr_desired = 0;
                else gcr_desired -= LED_GCR_STEP;
                if (led_animation_breathing) gcr_breathe = gcr_desired;
            }
            return 0;
        case 142:
            if (record->event.pressed) {
                if (led_animation_id == led_setups_count - 1) led_animation_id = 0;
                else led_animation_id++;
            }
            return 0;
        case 141:
            if (record->event.pressed) {
                if (led_animation_id == 0) led_animation_id = led_setups_count - 1;
                else led_animation_id--;
            }
            return 0;
        case 143:
            if (record->event.pressed) {
                led_animation_speed += ANIMATION_SPEED_STEP;
            }
            return 0;
        case 144:
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
        case 145:
            if (record->event.pressed) {
                led_enabled = 1;
                I2C3733_Control_Set(led_enabled);
            }
            return 0;
        case 146:
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
        case 151:
            if (record->event.pressed) {
                TOGGLE_FLAG_AND_PRINT(debug_enable, "Debug mode");
            }
            return 0;
        case 152:
            if (record->event.pressed) {
                TOGGLE_FLAG_AND_PRINT(debug_matrix, "Debug matrix");
            }
            return 0;
        case 154:
            if (record->event.pressed) {
                TOGGLE_FLAG_AND_PRINT(debug_keyboard, "Debug keyboard");
            }
            return 0;
        case 153:
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
        case 137:
        case 139:
            if (record->event.pressed) {

                uint8_t incre = keycode == 137 ? 7 -1 : 1;
                USER_CONFIG.PATTERN_INDEX += incre;
                USER_CONFIG.PATTERN_INDEX %= 7;

                if(USER_CONFIG.PATTERN_INDEX <= 4){
                    USER_CONFIG.TRAVEL_DISTANCE = 25;
                    USER_CONFIG.COLOR_PATTERN_INDEX = 0;
                    USER_CONFIG.WAVE_PERIOD = 50;
                }

                switch(USER_CONFIG.PATTERN_INDEX){
                case 0:
                    break;
                case 1:
                    USER_CONFIG.WAVE_FRONT_WIDTH = 2;
                    break;
                case 2:
                    USER_CONFIG.WAVE_FRONT_WIDTH = 5;
                    break;
                case 3:
                    USER_CONFIG.WAVE_FRONT_WIDTH = 10;
                    break;
                case 4:
                    USER_CONFIG.WAVE_FRONT_WIDTH = 10;
                    break;
                case 5:
                    USER_CONFIG.WAVE_FRONT_WIDTH = 10;

                    USER_CONFIG.COLOR_PATTERN_INDEX = 2;
                    USER_CONFIG.TRAVEL_DISTANCE = 0;
                    USER_CONFIG.WAVE_PERIOD = 100;
                    break;
                case 6:
                    USER_CONFIG.WAVE_FRONT_WIDTH = 25;

                    USER_CONFIG.COLOR_PATTERN_INDEX = 3;
                    USER_CONFIG.TRAVEL_DISTANCE = 2;
                    USER_CONFIG.WAVE_PERIOD = 10;
                    break;
                }


                for(int i = 0; i < KEY_STROKES_LENGTH; ++i){
                    KEY_STROKES[i].alive = 0;
                }
                refresh_pattern_indicators();
                refresh_color_pattern_indicators();
            }
            return 0;
        case 135:
        case 138:
            if(record->event.pressed){
                short incre = keycode == 135 ? 1 : -1;
                USER_CONFIG.WAVE_FRONT_WIDTH += incre;
                if(USER_CONFIG.WAVE_FRONT_WIDTH < 1){
                    USER_CONFIG.WAVE_FRONT_WIDTH = 1;
                }
            }
            return 0;
        case 140:
        case 136:
            if(record->event.pressed){
                short incre = keycode == 140 ? -1 : 1;

                USER_CONFIG.WAVE_PERIOD += 10 * incre;
                if(USER_CONFIG.WAVE_PERIOD < 10){
                    USER_CONFIG.WAVE_PERIOD = 10;
                }
            }
            return 0;

        case 147:
        case 148:
            if(record->event.pressed){
                uint8_t incre = keycode == 147 ? COLOR_PATTERNS_COUNT - 1 : 1;
                USER_CONFIG.COLOR_PATTERN_INDEX += incre;
                USER_CONFIG.COLOR_PATTERN_INDEX %= COLOR_PATTERNS_COUNT;
                refresh_color_pattern_indicators();
            }
            return 0;
        default:
            if (record->event.pressed){
                uint8_t led_id = ktli(keycode);
                if(led_id){
                    for(int i = 0; i < KEY_STROKES_LENGTH; ++i){
                        if(!KEY_STROKES[i].alive){
                            KEY_STROKES[i].alive = 1;
                            KEY_STROKES[i].led_id = led_id;
                            KEY_STROKES[i].time = timer_read32();
                            break;
                        }
                    }
                }
            }
            return 1;
    }
}
