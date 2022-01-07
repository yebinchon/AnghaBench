
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLsizei ;
typedef scalar_t__ GLint ;


 int GL_INFO_LOG_LENGTH ;
 int LOG_DEBUG ;
 int bfree (char*) ;
 int blog (int ,char*,char const*,char*) ;
 char* bzalloc (scalar_t__) ;
 int glGetShaderInfoLog (int ,scalar_t__,int *,char*) ;
 int glGetShaderiv (int ,int ,scalar_t__*) ;
 int gl_success (char*) ;

__attribute__((used)) static void gl_get_shader_info(GLuint shader, const char *file,
          char **error_string)
{
 char *errors;
 GLint info_len = 0;
 GLsizei chars_written = 0;

 glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &info_len);
 if (!gl_success("glGetProgramiv") || !info_len)
  return;

 errors = bzalloc(info_len + 1);
 glGetShaderInfoLog(shader, info_len, &chars_written, errors);
 gl_success("glGetShaderInfoLog");

 blog(LOG_DEBUG, "Compiler warnings/errors for %s:\n%s", file, errors);

 if (error_string)
  *error_string = errors;
 else
  bfree(errors);
}
