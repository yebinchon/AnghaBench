
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct shader_func {TYPE_1__ params; int mapping; int return_type; int name; } ;


 int bfree (int ) ;
 int da_free (TYPE_1__) ;
 int shader_var_free (scalar_t__) ;

__attribute__((used)) static inline void shader_func_free(struct shader_func *sf)
{
 size_t i;

 for (i = 0; i < sf->params.num; i++)
  shader_var_free(sf->params.array + i);

 bfree(sf->name);
 bfree(sf->return_type);
 bfree(sf->mapping);
 da_free(sf->params);
}
