
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_audio_buffer {int num_samples; } ;



int mp_audio_buffer_samples(struct mp_audio_buffer *ab)
{
    return ab->num_samples;
}
