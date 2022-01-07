
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int array; int num; } ;
struct TYPE_5__ {TYPE_1__ cur_val; } ;
typedef TYPE_2__ gs_eparam_t ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int memcpy (void*,int ,size_t) ;
 size_t min (size_t,int ) ;

__attribute__((used)) static inline void effect_getval_inline(gs_eparam_t *param, void *data,
     size_t size)
{
 if (!param) {
  blog(LOG_ERROR, "effect_getval_inline: invalid param");
  return;
 }

 if (!data) {
  blog(LOG_ERROR, "effect_getval_inline: invalid data");
  return;
 }

 size_t bytes = min(size, param->cur_val.num);

 memcpy(data, param->cur_val.array, bytes);
}
