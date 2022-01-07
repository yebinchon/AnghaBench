
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t num; } ;
struct TYPE_6__ {TYPE_1__ cur_val; } ;
typedef TYPE_2__ gs_eparam_t ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 scalar_t__ bzalloc (size_t) ;
 int effect_getval_inline (TYPE_2__*,void*,size_t) ;

void *gs_effect_get_val(gs_eparam_t *param)
{
 if (!param) {
  blog(LOG_ERROR, "gs_effect_get_val: invalid param");
  return ((void*)0);
 }
 size_t size = param->cur_val.num;
 void *data;

 if (size)
  data = (void *)bzalloc(size);
 else
  return ((void*)0);

 effect_getval_inline(param, data, size);

 return data;
}
