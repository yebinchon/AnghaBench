
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mp_audio_buffer {int num_samples; int ** data; } ;



void mp_audio_buffer_peek(struct mp_audio_buffer *ab, uint8_t ***ptr,
                          int *samples)
{
    *ptr = ab->data;
    *samples = ab->num_samples;
}
