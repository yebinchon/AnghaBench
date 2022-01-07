
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t confSize; int * confBuf; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
typedef TYPE_2__ libfdk_encoder_t ;



__attribute__((used)) static bool libfdk_extra_data(void *data, uint8_t **extra_data, size_t *size)
{
 libfdk_encoder_t *enc = data;

 *size = enc->info.confSize;
 *extra_data = enc->info.confBuf;

 return 1;
}
