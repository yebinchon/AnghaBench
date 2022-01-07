
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; scalar_t__ array; } ;
struct decl_info {int name; TYPE_1__ params; } ;


 int bfree (int ) ;
 int da_free (TYPE_1__) ;
 int decl_param_free (scalar_t__) ;
 int memset (struct decl_info*,int ,int) ;

__attribute__((used)) static inline void decl_info_free(struct decl_info *decl)
{
 if (decl) {
  for (size_t i = 0; i < decl->params.num; i++)
   decl_param_free(decl->params.array + i);
  da_free(decl->params);

  bfree(decl->name);
  memset(decl, 0, sizeof(struct decl_info));
 }
}
