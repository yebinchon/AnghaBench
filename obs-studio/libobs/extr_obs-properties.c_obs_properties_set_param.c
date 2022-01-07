
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* param; void (* destroy ) (void*) ;} ;
typedef TYPE_1__ obs_properties_t ;


 void stub1 (void*) ;

void obs_properties_set_param(obs_properties_t *props, void *param,
         void (*destroy)(void *param))
{
 if (!props)
  return;

 if (props->param && props->destroy)
  props->destroy(props->param);

 props->param = param;
 props->destroy = destroy;
}
