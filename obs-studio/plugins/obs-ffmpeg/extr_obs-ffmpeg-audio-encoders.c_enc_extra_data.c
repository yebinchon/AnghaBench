
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct enc_encoder {TYPE_1__* context; } ;
struct TYPE_2__ {size_t extradata_size; int * extradata; } ;



__attribute__((used)) static bool enc_extra_data(void *data, uint8_t **extra_data, size_t *size)
{
 struct enc_encoder *enc = data;

 *extra_data = enc->context->extradata;
 *size = enc->context->extradata_size;
 return 1;
}
