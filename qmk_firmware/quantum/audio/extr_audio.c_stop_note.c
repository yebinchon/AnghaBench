
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISABLE_AUDIO_COUNTER_1_ISR ;
 int DISABLE_AUDIO_COUNTER_1_OUTPUT ;
 int DISABLE_AUDIO_COUNTER_3_ISR ;
 int DISABLE_AUDIO_COUNTER_3_OUTPUT ;
 int audio_init () ;
 int audio_initialized ;
 int dprintf (char*,int) ;
 float* frequencies ;
 scalar_t__ frequency ;
 scalar_t__ frequency_alt ;
 int playing_note ;
 scalar_t__ voice_place ;
 scalar_t__ voices ;
 scalar_t__ volume ;
 scalar_t__* volumes ;

void stop_note(float freq) {
    dprintf("audio stop note freq=%d", (int)freq);

    if (playing_note) {
        if (!audio_initialized) {
            audio_init();
        }
        for (int i = 7; i >= 0; i--) {
            if (frequencies[i] == freq) {
                frequencies[i] = 0;
                volumes[i] = 0;
                for (int j = i; (j < 7); j++) {
                    frequencies[j] = frequencies[j + 1];
                    frequencies[j + 1] = 0;
                    volumes[j] = volumes[j + 1];
                    volumes[j + 1] = 0;
                }
                break;
            }
        }
        voices--;
        if (voices < 0) voices = 0;
        if (voice_place >= voices) {
            voice_place = 0;
        }
        if (voices == 0) {
            frequency = 0;
            frequency_alt = 0;
            volume = 0;
            playing_note = 0;
        }
    }
}
