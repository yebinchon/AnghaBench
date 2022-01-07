
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* output_buffer; scalar_t__ context; } ;
typedef TYPE_1__ audio_resampler_t ;


 int av_freep (scalar_t__*) ;
 int bfree (TYPE_1__*) ;
 int swr_free (scalar_t__*) ;

void audio_resampler_destroy(audio_resampler_t *rs)
{
 if (rs) {
  if (rs->context)
   swr_free(&rs->context);
  if (rs->output_buffer[0])
   av_freep(&rs->output_buffer[0]);

  bfree(rs);
 }
}
