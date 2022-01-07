
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct ep_technique {TYPE_1__ passes; int name; } ;


 int bfree (int ) ;
 int da_free (TYPE_1__) ;
 int ep_pass_free (scalar_t__) ;

__attribute__((used)) static inline void ep_technique_free(struct ep_technique *ept)
{
 size_t i;

 for (i = 0; i < ept->passes.num; i++)
  ep_pass_free(ept->passes.array + i);

 bfree(ept->name);
 da_free(ept->passes);
}
