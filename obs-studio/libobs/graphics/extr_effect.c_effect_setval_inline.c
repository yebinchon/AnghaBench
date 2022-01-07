
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t num; int array; } ;
struct TYPE_4__ {int changed; TYPE_3__ cur_val; } ;
typedef TYPE_1__ gs_eparam_t ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int da_resize (TYPE_3__,size_t) ;
 scalar_t__ memcmp (int ,void const*,size_t) ;
 int memcpy (int ,void const*,size_t) ;

__attribute__((used)) static inline void effect_setval_inline(gs_eparam_t *param, const void *data,
     size_t size)
{
 bool size_changed;

 if (!param) {
  blog(LOG_ERROR, "effect_setval_inline: invalid param");
  return;
 }

 if (!data) {
  blog(LOG_ERROR, "effect_setval_inline: invalid data");
  return;
 }

 size_changed = param->cur_val.num != size;

 if (size_changed)
  da_resize(param->cur_val, size);

 if (size_changed || memcmp(param->cur_val.array, data, size) != 0) {
  memcpy(param->cur_val.array, data, size);
  param->changed = 1;
 }
}
