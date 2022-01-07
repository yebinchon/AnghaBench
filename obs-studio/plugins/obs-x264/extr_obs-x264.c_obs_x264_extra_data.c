
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct obs_x264 {size_t extra_data_size; int * extra_data; int context; } ;



__attribute__((used)) static bool obs_x264_extra_data(void *data, uint8_t **extra_data, size_t *size)
{
 struct obs_x264 *obsx264 = data;

 if (!obsx264->context)
  return 0;

 *extra_data = obsx264->extra_data;
 *size = obsx264->extra_data_size;
 return 1;
}
