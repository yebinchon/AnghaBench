
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct obs_qsv {size_t extra_data_size; int * extra_data; int context; } ;



__attribute__((used)) static bool obs_qsv_extra_data(void *data, uint8_t **extra_data, size_t *size)
{
 struct obs_qsv *obsqsv = data;

 if (!obsqsv->context)
  return 0;

 *extra_data = obsqsv->extra_data;
 *size = obsqsv->extra_data_size;
 return 1;
}
