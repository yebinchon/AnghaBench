
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int enable; } ;
typedef int GPTDriver ;


 scalar_t__ GET_CHANNEL_1_FREQ ;
 scalar_t__ GET_CHANNEL_2_FREQ ;
 int RESTART_CHANNEL_1 () ;
 int RESTART_CHANNEL_2 () ;
 int STOP_CHANNEL_1 () ;
 int STOP_CHANNEL_2 () ;
 int UPDATE_CHANNEL_1_FREQ (float) ;
 int UPDATE_CHANNEL_2_FREQ (float) ;
 TYPE_1__ audio_config ;
 size_t current_note ;
 int envelope_index ;
 int* frequencies ;
 int frequency ;
 int frequency_alt ;
 scalar_t__ glissando ;
 int note_frequency ;
 int note_length ;
 int note_position ;
 int note_resting ;
 scalar_t__ note_tempo ;
 size_t notes_count ;
 int*** notes_pointer ;
 scalar_t__ notes_repeat ;
 double place ;
 int playing_note ;
 int playing_notes ;
 int polyphony_rate ;
 int pow (int,int) ;
 float vibrato (int) ;
 scalar_t__ vibrato_strength ;
 float voice_envelope (float) ;
 int voice_place ;
 int voices ;

__attribute__((used)) static void gpt_cb8(GPTDriver *gptp) {
    float freq;

    if (playing_note) {
        if (voices > 0) {
            float freq_alt = 0;
            if (voices > 1) {
                if (polyphony_rate == 0) {
                    if (glissando) {
                        if (frequency_alt != 0 && frequency_alt < frequencies[voices - 2] && frequency_alt < frequencies[voices - 2] * pow(2, -440 / frequencies[voices - 2] / 12 / 2)) {
                            frequency_alt = frequency_alt * pow(2, 440 / frequency_alt / 12 / 2);
                        } else if (frequency_alt != 0 && frequency_alt > frequencies[voices - 2] && frequency_alt > frequencies[voices - 2] * pow(2, 440 / frequencies[voices - 2] / 12 / 2)) {
                            frequency_alt = frequency_alt * pow(2, -440 / frequency_alt / 12 / 2);
                        } else {
                            frequency_alt = frequencies[voices - 2];
                        }
                    } else {
                        frequency_alt = frequencies[voices - 2];
                    }
                    freq_alt = frequency_alt;

                }

                if (envelope_index < 65535) {
                    envelope_index++;
                }

                freq_alt = voice_envelope(freq_alt);

                if (freq_alt < 30.517578125) {
                    freq_alt = 30.52;
                }

                if (GET_CHANNEL_2_FREQ != (uint16_t)freq_alt) {
                    UPDATE_CHANNEL_2_FREQ(freq_alt);
                } else {
                    RESTART_CHANNEL_2();
                }

            }

            if (polyphony_rate > 0) {
                if (voices > 1) {
                    voice_place %= voices;
                    if (place++ > (frequencies[voice_place] / polyphony_rate)) {
                        voice_place = (voice_place + 1) % voices;
                        place = 0.0;
                    }
                }
                freq = frequencies[voice_place];

            } else {
                if (glissando) {
                    if (frequency != 0 && frequency < frequencies[voices - 1] && frequency < frequencies[voices - 1] * pow(2, -440 / frequencies[voices - 1] / 12 / 2)) {
                        frequency = frequency * pow(2, 440 / frequency / 12 / 2);
                    } else if (frequency != 0 && frequency > frequencies[voices - 1] && frequency > frequencies[voices - 1] * pow(2, 440 / frequencies[voices - 1] / 12 / 2)) {
                        frequency = frequency * pow(2, -440 / frequency / 12 / 2);
                    } else {
                        frequency = frequencies[voices - 1];
                    }
                } else {
                    frequency = frequencies[voices - 1];
                }
                freq = frequency;

            }

            if (envelope_index < 65535) {
                envelope_index++;
            }

            freq = voice_envelope(freq);

            if (freq < 30.517578125) {
                freq = 30.52;
            }

            if (GET_CHANNEL_1_FREQ != (uint16_t)freq) {
                UPDATE_CHANNEL_1_FREQ(freq);
            } else {
                RESTART_CHANNEL_1();
            }

        }
    }

    if (playing_notes) {
        if (note_frequency > 0) {







            freq = note_frequency;


            if (envelope_index < 65535) {
                envelope_index++;
            }
            freq = voice_envelope(freq);

            if (GET_CHANNEL_1_FREQ != (uint16_t)freq) {
                UPDATE_CHANNEL_1_FREQ(freq);
                UPDATE_CHANNEL_2_FREQ(freq);
            }

        } else {


        }

        note_position++;
        bool end_of_note = 0;
        if (GET_CHANNEL_1_FREQ > 0) {
            if (!note_resting)
                end_of_note = (note_position >= (note_length * 8 - 1));
            else
                end_of_note = (note_position >= (note_length * 8));
        } else {
            end_of_note = (note_position >= (note_length * 8));
        }

        if (end_of_note) {
            current_note++;
            if (current_note >= notes_count) {
                if (notes_repeat) {
                    current_note = 0;
                } else {
                    STOP_CHANNEL_1();
                    STOP_CHANNEL_2();

                    playing_notes = 0;
                    return;
                }
            }
            if (!note_resting) {
                note_resting = 1;
                current_note--;
                if ((*notes_pointer)[current_note][0] == (*notes_pointer)[current_note + 1][0]) {
                    note_frequency = 0;
                    note_length = 1;
                } else {
                    note_frequency = (*notes_pointer)[current_note][0];
                    note_length = 1;
                }
            } else {
                note_resting = 0;
                envelope_index = 0;
                note_frequency = (*notes_pointer)[current_note][0];
                note_length = ((*notes_pointer)[current_note][1] / 4) * (((float)note_tempo) / 100);
            }

            note_position = 0;
        }
    }

    if (!audio_config.enable) {
        playing_notes = 0;
        playing_note = 0;
    }
}
