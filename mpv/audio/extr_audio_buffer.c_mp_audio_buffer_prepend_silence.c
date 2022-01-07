
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_audio_buffer {int num_planes; int sstride; int format; int * data; scalar_t__ num_samples; } ;


 int af_fill_silence (int ,int,int ) ;
 int assert (int) ;
 int copy_planes (struct mp_audio_buffer*,int *,int,int *,int ,scalar_t__) ;
 int mp_audio_buffer_preallocate_min (struct mp_audio_buffer*,scalar_t__) ;

void mp_audio_buffer_prepend_silence(struct mp_audio_buffer *ab, int samples)
{
    assert(samples >= 0);
    mp_audio_buffer_preallocate_min(ab, ab->num_samples + samples);
    copy_planes(ab, ab->data, samples, ab->data, 0, ab->num_samples);
    ab->num_samples += samples;
    for (int n = 0; n < ab->num_planes; n++)
        af_fill_silence(ab->data[n], samples * ab->sstride, ab->format);
}
