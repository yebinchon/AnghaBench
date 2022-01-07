
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int loadyuv; int transform; } ;
typedef TYPE_1__ ModelInput ;


 int loadyuv_destroy (int *) ;
 int transform_destroy (int *) ;

void model_input_free(ModelInput* s) {
  transform_destroy(&s->transform);
  loadyuv_destroy(&s->loadyuv);
}
