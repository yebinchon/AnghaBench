
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nvenc_encoder {size_t sei_size; int * sei; } ;



__attribute__((used)) static bool nvenc_sei_data(void *data, uint8_t **extra_data, size_t *size)
{
 struct nvenc_encoder *enc = data;

 *extra_data = enc->sei;
 *size = enc->sei_size;
 return 1;
}
