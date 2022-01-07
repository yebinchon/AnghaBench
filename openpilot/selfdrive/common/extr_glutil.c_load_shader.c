
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLint ;
typedef int GLenum ;


 int GL_COMPILE_STATUS ;
 int GL_INFO_LOG_LENGTH ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int glCompileShader (int ) ;
 int glCreateShader (int ) ;
 int glDeleteShader (int ) ;
 int glGetShaderInfoLog (int ,int,int *,char*) ;
 int glGetShaderiv (int ,int ,int*) ;
 int glShaderSource (int ,int,char const**,int *) ;
 scalar_t__ malloc (int) ;
 int stderr ;

GLuint load_shader(GLenum shaderType, const char *src) {
  GLint status = 0, len = 0;
  GLuint shader;

  if (!(shader = glCreateShader(shaderType)))
    return 0;

  glShaderSource(shader, 1, &src, ((void*)0));
  glCompileShader(shader);
  glGetShaderiv(shader, GL_COMPILE_STATUS, &status);

  if (status)
    return shader;

  glGetShaderiv(shader, GL_INFO_LOG_LENGTH, &len);
  if (len) {
    char *msg = (char*)malloc(len);
    if (msg) {
      glGetShaderInfoLog(shader, len, ((void*)0), msg);
      msg[len-1] = 0;
      fprintf(stderr, "error compiling shader:\n%s\n", msg);
      free(msg);
    }
  }
  glDeleteShader(shader);
  return 0;
}
