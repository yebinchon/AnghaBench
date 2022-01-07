
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nvenc_data {size_t sei_size; int * sei; } ;



__attribute__((used)) static bool nvenc_sei_data(void *data, uint8_t **sei, size_t *size)
{
 struct nvenc_data *enc = data;

 if (!enc->sei) {
  return 0;
 }

 *sei = enc->sei;
 *size = enc->sei_size;
 return 1;
}
