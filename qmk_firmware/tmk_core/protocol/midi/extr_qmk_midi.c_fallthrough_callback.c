
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int MidiDevice ;




 int MIDI_STOP ;
 int play_note (double,int) ;
 double pow (double,int) ;
 int stop_all_notes () ;
 int stop_note (double) ;

__attribute__((used)) static void fallthrough_callback(MidiDevice* device, uint16_t cnt, uint8_t byte0, uint8_t byte1, uint8_t byte2) {
}
