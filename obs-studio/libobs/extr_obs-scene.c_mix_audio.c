
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void mix_audio(float *p_out, float *p_in, size_t pos,
        size_t count)
{
 register float *out = p_out;
 register float *in = p_in + pos;
 register float *end = in + count;

 while (in < end)
  *(out++) += *(in++);
}
