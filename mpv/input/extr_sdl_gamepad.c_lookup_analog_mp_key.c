
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float const int16_t ;


 int INVALID_KEY ;
 int MP_ARRAY_SIZE (int**) ;
 int** analog_map ;

__attribute__((used)) static int lookup_analog_mp_key(int sdl_key, int16_t value)
{
    const int sdl_axis_max = 32767;
    const int negative = 1;
    const int negative_neutral = 2;
    const int positive_neutral = 3;
    const int positive = 4;

    const float activation_threshold = sdl_axis_max * 0.33;
    const float noise_threshold = sdl_axis_max * 0.06;



    if (value < noise_threshold && value > -noise_threshold) {
        return INVALID_KEY;
    }

    int state = value > 0 ? positive_neutral : negative_neutral;

    if (value >= sdl_axis_max - activation_threshold) {
        state = positive;
    }

    if (value <= activation_threshold - sdl_axis_max) {
        state = negative;
    }

    for (int i = 0; i < MP_ARRAY_SIZE(analog_map); i++) {
        if (analog_map[i][0] == sdl_key) {
            return analog_map[i][state];
        }
    }

    return INVALID_KEY;
}
