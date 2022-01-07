
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t int8_t ;


 int ENCODER_RESOLUTION ;
 scalar_t__* encoder_LUT ;
 int * encoder_pulses ;
 int encoder_update_kb (size_t,int) ;
 int * encoder_value ;

__attribute__((used)) static void encoder_update(int8_t index, uint8_t state) {
    encoder_pulses[index] += encoder_LUT[state & 0xF];
    if (encoder_pulses[index] >= ENCODER_RESOLUTION) {
        encoder_value[index]++;
        encoder_update_kb(index, 1);
    }
    if (encoder_pulses[index] <= -ENCODER_RESOLUTION) {
        encoder_value[index]--;
        encoder_update_kb(index, 0);
    }
    encoder_pulses[index] %= ENCODER_RESOLUTION;
}
