
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_shader_parser {int parser; } ;


 int LOG_WARNING ;
 int bfree (char*) ;
 int blog (int ,char*,char*) ;
 int gl_shader_buildstring (struct gl_shader_parser*) ;
 int shader_parse (int *,char const*,char const*) ;
 char* shader_parser_geterrors (int *) ;

bool gl_shader_parse(struct gl_shader_parser *glsp, const char *shader_str,
       const char *file)
{
 bool success = shader_parse(&glsp->parser, shader_str, file);
 char *str = shader_parser_geterrors(&glsp->parser);
 if (str) {
  blog(LOG_WARNING, "Shader parser errors/warnings:\n%s\n", str);
  bfree(str);
 }

 if (success)
  success = gl_shader_buildstring(glsp);

 return success;
}
