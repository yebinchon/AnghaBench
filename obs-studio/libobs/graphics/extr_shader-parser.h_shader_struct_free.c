
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct shader_struct {TYPE_1__ vars; int name; } ;


 int bfree (int ) ;
 int da_free (TYPE_1__) ;
 int shader_var_free (scalar_t__) ;

__attribute__((used)) static inline void shader_struct_free(struct shader_struct *ss)
{
 size_t i;

 for (i = 0; i < ss->vars.num; i++)
  shader_var_free(ss->vars.array + i);

 bfree(ss->name);
 da_free(ss->vars);
}
