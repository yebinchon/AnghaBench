
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shader_parser {int gl_string; } ;


 int dstr_cat (int *,char const*) ;
 int gl_write_type_n (struct gl_shader_parser*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline void gl_write_type(struct gl_shader_parser *glsp,
     const char *type)
{
 if (!gl_write_type_n(glsp, type, strlen(type)))
  dstr_cat(&glsp->gl_string, type);
}
