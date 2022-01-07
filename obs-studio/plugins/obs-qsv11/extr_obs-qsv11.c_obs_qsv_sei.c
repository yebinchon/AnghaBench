
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct obs_qsv {size_t sei_size; int * sei; int context; } ;


 int UNUSED_PARAMETER (size_t*) ;

__attribute__((used)) static bool obs_qsv_sei(void *data, uint8_t **sei, size_t *size)
{
 struct obs_qsv *obsqsv = data;

 if (!obsqsv->context)
  return 0;


 UNUSED_PARAMETER(sei);
 UNUSED_PARAMETER(size);

 *sei = obsqsv->sei;
 *size = obsqsv->sei_size;
 return 1;
}
