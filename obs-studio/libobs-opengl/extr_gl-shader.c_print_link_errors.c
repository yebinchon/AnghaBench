
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLsizei ;
typedef scalar_t__ GLint ;


 int GL_INFO_LOG_LENGTH ;
 int LOG_DEBUG ;
 int blog (int ,char*,char*) ;
 char* calloc (int,scalar_t__) ;
 int free (char*) ;
 int glGetProgramInfoLog (int ,scalar_t__,int *,char*) ;
 int glGetProgramiv (int ,int ,scalar_t__*) ;
 int gl_success (char*) ;

__attribute__((used)) static void print_link_errors(GLuint program)
{
 char *errors = ((void*)0);
 GLint info_len = 0;
 GLsizei chars_written = 0;

 glGetProgramiv(program, GL_INFO_LOG_LENGTH, &info_len);
 if (!gl_success("glGetProgramiv") || !info_len)
  return;

 errors = calloc(1, info_len + 1);
 glGetProgramInfoLog(program, info_len, &chars_written, errors);
 gl_success("glGetShaderInfoLog");

 blog(LOG_DEBUG, "Linker warnings/errors:\n%s", errors);

 free(errors);
}
