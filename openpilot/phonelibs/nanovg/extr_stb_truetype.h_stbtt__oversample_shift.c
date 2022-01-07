
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float stbtt__oversample_shift(int oversample)
{
   if (!oversample)
      return 0.0f;





   return (float)-(oversample - 1) / (2.0f * (float)oversample);
}
