
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_audio_buffer {double num_samples; scalar_t__ srate; } ;



double mp_audio_buffer_seconds(struct mp_audio_buffer *ab)
{
    return ab->num_samples / (double)ab->srate;
}
