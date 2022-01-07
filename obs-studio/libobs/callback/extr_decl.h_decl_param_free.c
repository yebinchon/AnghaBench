
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decl_param {scalar_t__ name; } ;


 int bfree (scalar_t__) ;
 int memset (struct decl_param*,int ,int) ;

__attribute__((used)) static inline void decl_param_free(struct decl_param *param)
{
 if (param->name)
  bfree(param->name);
 memset(param, 0, sizeof(struct decl_param));
}
