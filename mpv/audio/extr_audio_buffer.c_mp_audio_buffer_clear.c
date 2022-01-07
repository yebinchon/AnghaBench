
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_audio_buffer {scalar_t__ num_samples; } ;



void mp_audio_buffer_clear(struct mp_audio_buffer *ab)
{
    ab->num_samples = 0;
}
