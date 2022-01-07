
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_shader_t ;


 int LOG_ERROR ;
 int bfree (char*) ;
 int blog (int ,char*,char const*) ;
 int gs_valid_p (char*,char const*) ;
 int * gs_vertexshader_create (char*,char const*,char**) ;
 char* os_quick_read_utf8_file (char const*) ;

gs_shader_t *gs_vertexshader_create_from_file(const char *file,
           char **error_string)
{
 if (!gs_valid_p("gs_vertexshader_create_from_file", file))
  return ((void*)0);

 char *file_string;
 gs_shader_t *shader = ((void*)0);

 file_string = os_quick_read_utf8_file(file);
 if (!file_string) {
  blog(LOG_ERROR, "Could not load vertex shader file '%s'", file);
  return ((void*)0);
 }

 shader = gs_vertexshader_create(file_string, file, error_string);
 bfree(file_string);

 return shader;
}
