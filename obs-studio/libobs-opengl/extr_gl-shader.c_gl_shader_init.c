
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gs_shader {scalar_t__ type; int obj; } ;
struct TYPE_2__ {char* array; } ;
struct gl_shader_parser {TYPE_1__ gl_string; } ;
typedef int GLsizei ;
typedef int GLint ;
typedef int GLenum ;
typedef int GLchar ;


 int GL_COMPILE_STATUS ;
 int GL_INFO_LOG_LENGTH ;
 scalar_t__ GS_SHADER_VERTEX ;
 int LOG_DEBUG ;
 int LOG_ERROR ;
 int blog (int ,char*,...) ;
 int convert_shader_type (scalar_t__) ;
 int free (char*) ;
 int glCompileShader (int ) ;
 int glCreateShader (int ) ;
 int glGetShaderInfoLog (int ,int,int *,char*) ;
 int glGetShaderiv (int ,int ,int*) ;
 int glShaderSource (int ,int,int const**,int ) ;
 int gl_add_params (struct gs_shader*,struct gl_shader_parser*) ;
 int gl_add_samplers (struct gs_shader*,struct gl_shader_parser*) ;
 int gl_get_shader_info (int ,char const*,char**) ;
 int gl_process_attribs (struct gs_shader*,struct gl_shader_parser*) ;
 int gl_success (char*) ;
 char* malloc (int) ;

__attribute__((used)) static bool gl_shader_init(struct gs_shader *shader,
      struct gl_shader_parser *glsp, const char *file,
      char **error_string)
{
 GLenum type = convert_shader_type(shader->type);
 int compiled = 0;
 bool success = 1;

 shader->obj = glCreateShader(type);
 if (!gl_success("glCreateShader") || !shader->obj)
  return 0;

 glShaderSource(shader->obj, 1, (const GLchar **)&glsp->gl_string.array,
         0);
 if (!gl_success("glShaderSource"))
  return 0;

 glCompileShader(shader->obj);
 if (!gl_success("glCompileShader"))
  return 0;
 glGetShaderiv(shader->obj, GL_COMPILE_STATUS, &compiled);
 if (!gl_success("glGetShaderiv"))
  return 0;

 if (!compiled) {
  GLint infoLength = 0;
  glGetShaderiv(shader->obj, GL_INFO_LOG_LENGTH, &infoLength);

  char *infoLog = malloc(sizeof(char) * infoLength);

  GLsizei returnedLength = 0;
  glGetShaderInfoLog(shader->obj, infoLength, &returnedLength,
       infoLog);
  blog(LOG_ERROR, "Error compiling shader:\n%s\n", infoLog);

  free(infoLog);

  success = 0;
 }

 gl_get_shader_info(shader->obj, file, error_string);

 if (success)
  success = gl_add_params(shader, glsp);

 if (success && shader->type == GS_SHADER_VERTEX)
  success = gl_process_attribs(shader, glsp);
 if (success)
  gl_add_samplers(shader, glsp);

 return success;
}
