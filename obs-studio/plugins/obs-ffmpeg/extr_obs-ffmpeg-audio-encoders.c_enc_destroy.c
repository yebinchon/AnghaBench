
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enc_encoder {int packet_buffer; scalar_t__ aframe; scalar_t__ context; scalar_t__* samples; } ;


 int av_frame_free (scalar_t__*) ;
 int av_freep (scalar_t__*) ;
 int avcodec_close (scalar_t__) ;
 int bfree (struct enc_encoder*) ;
 int da_free (int ) ;

__attribute__((used)) static void enc_destroy(void *data)
{
 struct enc_encoder *enc = data;

 if (enc->samples[0])
  av_freep(&enc->samples[0]);
 if (enc->context)
  avcodec_close(enc->context);
 if (enc->aframe)
  av_frame_free(&enc->aframe);

 da_free(enc->packet_buffer);
 bfree(enc);
}
