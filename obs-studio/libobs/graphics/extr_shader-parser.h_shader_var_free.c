
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_var {int default_val; int mapping; int name; int type; } ;


 int bfree (int ) ;
 int da_free (int ) ;

__attribute__((used)) static inline void shader_var_free(struct shader_var *sv)
{
 bfree(sv->type);
 bfree(sv->name);
 bfree(sv->mapping);
 da_free(sv->default_val);
}
