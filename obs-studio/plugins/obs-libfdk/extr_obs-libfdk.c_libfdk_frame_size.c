
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t frameLength; } ;
struct TYPE_4__ {TYPE_1__ info; } ;
typedef TYPE_2__ libfdk_encoder_t ;



__attribute__((used)) static size_t libfdk_frame_size(void *data)
{
 libfdk_encoder_t *enc = data;

 return enc->info.frameLength;
}
