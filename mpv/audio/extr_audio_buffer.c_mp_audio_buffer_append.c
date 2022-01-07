
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mp_audio_buffer {scalar_t__ num_samples; int data; } ;


 int copy_planes (struct mp_audio_buffer*,int ,scalar_t__,int **,int ,int) ;
 int mp_audio_buffer_preallocate_min (struct mp_audio_buffer*,scalar_t__) ;

void mp_audio_buffer_append(struct mp_audio_buffer *ab, void **ptr, int samples)
{
    mp_audio_buffer_preallocate_min(ab, ab->num_samples + samples);
    copy_planes(ab, ab->data, ab->num_samples, (uint8_t **)ptr, 0, samples);
    ab->num_samples += samples;
}
