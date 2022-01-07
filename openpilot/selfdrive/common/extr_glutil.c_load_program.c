
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLint ;


 int GL_FRAGMENT_SHADER ;
 int GL_INFO_LOG_LENGTH ;
 int GL_LINK_STATUS ;
 int GL_VERTEX_SHADER ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int glAttachShader (int ,int ) ;
 int glCreateProgram () ;
 int glDeleteProgram (int ) ;
 int glDeleteShader (int ) ;
 int glGetProgramInfoLog (int ,int,int *,char*) ;
 int glGetProgramiv (int ,int ,int*) ;
 int glLinkProgram (int ) ;
 int load_shader (int ,char const*) ;
 scalar_t__ malloc (int) ;
 int stderr ;

GLuint load_program(const char *vert_src, const char *frag_src) {
  GLuint vert, frag, prog;
  GLint status = 0, len = 0;

  if (!(vert = load_shader(GL_VERTEX_SHADER, vert_src)))
    return 0;
  if (!(frag = load_shader(GL_FRAGMENT_SHADER, frag_src)))
    goto fail_frag;
  if (!(prog = glCreateProgram()))
    goto fail_prog;

  glAttachShader(prog, vert);
  glAttachShader(prog, frag);
  glLinkProgram(prog);

  glGetProgramiv(prog, GL_LINK_STATUS, &status);
  if (status)
    return prog;

  glGetProgramiv(prog, GL_INFO_LOG_LENGTH, &len);
  if (len) {
    char *buf = (char*) malloc(len);
    if (buf) {
      glGetProgramInfoLog(prog, len, ((void*)0), buf);
      buf[len-1] = 0;
      fprintf(stderr, "error linking program:\n%s\n", buf);
      free(buf);
    }
  }
  glDeleteProgram(prog);
fail_prog:
  glDeleteShader(frag);
fail_frag:
  glDeleteShader(vert);
  return 0;
}
