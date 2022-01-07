
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int * ff_avc_find_startcode_internal (int const*,int const*) ;

const uint8_t *obs_avc_find_startcode(const uint8_t *p, const uint8_t *end)
{
 const uint8_t *out = ff_avc_find_startcode_internal(p, end);
 if (p < out && out < end && !out[-1])
  out--;
 return out;
}
