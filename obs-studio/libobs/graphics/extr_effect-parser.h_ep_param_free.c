
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; struct ep_param* array; } ;
struct ep_param {TYPE_1__ annotations; TYPE_1__ properties; TYPE_1__ default_val; int name; int type; } ;


 int bfree (int ) ;
 int da_free (TYPE_1__) ;

__attribute__((used)) static inline void ep_param_free(struct ep_param *epp)
{
 bfree(epp->type);
 bfree(epp->name);
 da_free(epp->default_val);
 da_free(epp->properties);

 for (size_t i = 0; i < epp->annotations.num; i++)
  ep_param_free(epp->annotations.array + i);
 da_free(epp->annotations);
}
