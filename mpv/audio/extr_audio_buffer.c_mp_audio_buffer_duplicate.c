
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_audio_buffer {int num_samples; int data; } ;


 int assert (int) ;
 int copy_planes (struct mp_audio_buffer*,int ,int,int ,int,int) ;
 int mp_audio_buffer_preallocate_min (struct mp_audio_buffer*,int) ;

void mp_audio_buffer_duplicate(struct mp_audio_buffer *ab, int samples)
{
    assert(samples >= 0 && samples <= ab->num_samples);
    mp_audio_buffer_preallocate_min(ab, ab->num_samples + samples);
    copy_planes(ab, ab->data, ab->num_samples,
                ab->data, ab->num_samples - samples, samples);
    ab->num_samples += samples;
}
