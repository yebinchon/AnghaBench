
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct ep_struct {TYPE_1__ vars; int name; } ;


 int bfree (int ) ;
 int da_free (TYPE_1__) ;
 int ep_var_free (scalar_t__) ;

__attribute__((used)) static inline void ep_struct_free(struct ep_struct *eps)
{
 size_t i;

 bfree(eps->name);
 for (i = 0; i < eps->vars.num; i++)
  ep_var_free(eps->vars.array + i);
 da_free(eps->vars);
}
