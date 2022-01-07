
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 float PITCH_STANDARD_A ;
 float pow (double,int) ;

float compute_freq_for_midi_note(uint8_t note) {

    return pow(2.0, (note - 69) / 12.0) * PITCH_STANDARD_A;
}
