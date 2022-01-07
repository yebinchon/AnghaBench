
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct obs_x264 {size_t sei_size; int * sei; int context; } ;



__attribute__((used)) static bool obs_x264_sei(void *data, uint8_t **sei, size_t *size)
{
 struct obs_x264 *obsx264 = data;

 if (!obsx264->context)
  return 0;

 *sei = obsx264->sei;
 *size = obsx264->sei_size;
 return 1;
}
