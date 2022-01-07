
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_audio_buffer {int num_samples; int data; } ;


 int assert (int) ;
 int copy_planes (struct mp_audio_buffer*,int ,int ,int ,int,int) ;

void mp_audio_buffer_skip(struct mp_audio_buffer *ab, int samples)
{
    assert(samples >= 0 && samples <= ab->num_samples);
    copy_planes(ab, ab->data, 0, ab->data, samples, ab->num_samples - samples);
    ab->num_samples -= samples;
}
