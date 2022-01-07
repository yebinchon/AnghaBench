
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_var {int dummy; } ;


 int memset (struct shader_var*,int ,int) ;

__attribute__((used)) static inline void shader_var_init(struct shader_var *sv)
{
 memset(sv, 0, sizeof(struct shader_var));
}
