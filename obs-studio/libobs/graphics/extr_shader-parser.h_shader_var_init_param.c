
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_var {char* type; char* name; size_t gl_sampler_id; int default_val; scalar_t__ array_count; int * mapping; int var_type; } ;


 int SHADER_VAR_CONST ;
 int SHADER_VAR_NONE ;
 int SHADER_VAR_UNIFORM ;
 int da_init (int ) ;

__attribute__((used)) static inline void shader_var_init_param(struct shader_var *sv, char *type,
      char *name, bool is_uniform,
      bool is_const)
{
 if (is_uniform)
  sv->var_type = SHADER_VAR_UNIFORM;
 else if (is_const)
  sv->var_type = SHADER_VAR_CONST;
 else
  sv->var_type = SHADER_VAR_NONE;

 sv->type = type;
 sv->name = name;
 sv->mapping = ((void*)0);
 sv->array_count = 0;
 sv->gl_sampler_id = (size_t)-1;
 da_init(sv->default_val);
}
