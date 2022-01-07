
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 float M_PI ;
 float cosf (float) ;

__attribute__((used)) static uint8_t off_on_off_gradient(float t, float index, float num) {
    const float two_pi = M_PI * 2.0f;
    float normalized_index = (1.0f - index / (num - 1.0f)) * two_pi;
    float x = t * two_pi + normalized_index-M_PI;
    if((1*M_PI) < x && x < (3*M_PI))
    {
      float v = 0.5 * (cosf(x) + 1.0f);
      return (uint8_t)(255.0f * v);
    }
    else
    {
      return 0;
    }
}
