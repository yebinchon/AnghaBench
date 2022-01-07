
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void mix_audio_with_buf(float *p_out, float *p_in, float *buf_in,
          size_t pos, size_t count)
{
 register float *out = p_out;
 register float *buf = buf_in + pos;
 register float *in = p_in + pos;
 register float *end = in + count;

 while (in < end)
  *(out++) += *(in++) * *(buf++);
}
