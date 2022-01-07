
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nvenc_data {size_t header_size; int * header; } ;



__attribute__((used)) static bool nvenc_extra_data(void *data, uint8_t **header, size_t *size)
{
 struct nvenc_data *enc = data;

 if (!enc->header) {
  return 0;
 }

 *header = enc->header;
 *size = enc->header_size;
 return 1;
}
