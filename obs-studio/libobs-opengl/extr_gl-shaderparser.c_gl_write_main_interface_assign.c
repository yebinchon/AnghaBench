
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_var {char* name; int mapping; } ;
struct gl_shader_parser {scalar_t__ type; int gl_string; } ;


 scalar_t__ GS_SHADER_VERTEX ;
 int dstr_cat (int *,char const*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static inline void gl_write_main_interface_assign(struct gl_shader_parser *glsp,
        struct shader_var *var,
        const char *src)
{

 if (glsp->type == GS_SHADER_VERTEX &&
     strcmp(var->mapping, "POSITION") == 0) {
  dstr_cat(&glsp->gl_string, "\tgl_Position = ");
  dstr_cat(&glsp->gl_string, src);
  dstr_cat(&glsp->gl_string, var->name);
  dstr_cat(&glsp->gl_string, ";\n");
 }
}
