
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_var {char* name; scalar_t__ mapping; int type; int member_0; } ;
struct shader_func {scalar_t__ mapping; int return_type; } ;
struct gl_shader_parser {int gl_string; } ;


 int dstr_cat (int *,char*) ;
 int gl_write_storage_var (struct gl_shader_parser*,struct shader_var*,int,int *) ;

__attribute__((used)) static void gl_write_outputs(struct gl_shader_parser *glsp,
        struct shader_func *main)
{
 struct shader_var var = {0};
 var.type = main->return_type;
 var.name = "outputval";
 if (main->mapping)
  var.mapping = main->mapping;

 gl_write_storage_var(glsp, &var, 0, ((void*)0));
 dstr_cat(&glsp->gl_string, "\n");
}
