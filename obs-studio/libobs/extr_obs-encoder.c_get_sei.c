
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int (* get_sei_data ) (int ,int **,size_t*) ;} ;
struct obs_encoder {TYPE_2__ context; TYPE_1__ info; } ;


 int stub1 (int ,int **,size_t*) ;

__attribute__((used)) static inline bool get_sei(const struct obs_encoder *encoder, uint8_t **sei,
      size_t *size)
{
 if (encoder->info.get_sei_data)
  return encoder->info.get_sei_data(encoder->context.data, sei,
        size);
 return 0;
}
