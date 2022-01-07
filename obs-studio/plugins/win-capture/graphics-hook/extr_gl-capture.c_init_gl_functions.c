
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GET_PROC (int (*) (),int ,int ) ;
 int base_get_proc (char*) ;
 int glBindBuffer ;
 int glBindFramebuffer ;
 int glBindTexture ;
 int glBlitFramebuffer ;
 int glBufferData ;
 int glDeleteBuffers ;
 int glDeleteFramebuffers ;
 int glDeleteTextures ;
 int glDrawBuffer ;
 int glFramebufferTexture2D ;
 int glGenBuffers ;
 int glGenFramebuffers ;
 int glGenTextures ;
 int glGetError ;
 int glGetIntegerv ;
 int glGetTexImage ;
 int glMapBuffer ;
 int glReadBuffer ;
 int glTexImage2D ;
 int glUnmapBuffer ;
 int hlog (char*) ;
 int init_nv_functions () ;
 int jimglGetCurrentContext ;
 int jimglGetCurrentDC ;
 int jimglGetProcAddress ;
 int jimglMakeCurrent ;
 int wglGetCurrentContext ;
 int wglGetCurrentDC ;
 int wglMakeCurrent ;

__attribute__((used)) static bool init_gl_functions(void)
{
 bool success = 1;

 jimglGetProcAddress = base_get_proc("wglGetProcAddress");
 if (!jimglGetProcAddress) {
  hlog("init_gl_functions: failed to get wglGetProcAddress");
  return 0;
 }

 GET_PROC(init_gl_functions, jimglMakeCurrent, wglMakeCurrent);
 GET_PROC(init_gl_functions, jimglGetCurrentDC, wglGetCurrentDC);
 GET_PROC(init_gl_functions, jimglGetCurrentContext,
   wglGetCurrentContext);
 GET_PROC(init_gl_functions, glTexImage2D, glTexImage2D);
 GET_PROC(init_gl_functions, glReadBuffer, glReadBuffer);
 GET_PROC(init_gl_functions, glGetTexImage, glGetTexImage);
 GET_PROC(init_gl_functions, glDrawBuffer, glDrawBuffer);
 GET_PROC(init_gl_functions, glGetError, glGetError);
 GET_PROC(init_gl_functions, glBufferData, glBufferData);
 GET_PROC(init_gl_functions, glDeleteBuffers, glDeleteBuffers);
 GET_PROC(init_gl_functions, glDeleteTextures, glDeleteTextures);
 GET_PROC(init_gl_functions, glGenBuffers, glGenBuffers);
 GET_PROC(init_gl_functions, glGenTextures, glGenTextures);
 GET_PROC(init_gl_functions, glMapBuffer, glMapBuffer);
 GET_PROC(init_gl_functions, glUnmapBuffer, glUnmapBuffer);
 GET_PROC(init_gl_functions, glBindBuffer, glBindBuffer);
 GET_PROC(init_gl_functions, glGetIntegerv, glGetIntegerv);
 GET_PROC(init_gl_functions, glBindTexture, glBindTexture);
 GET_PROC(init_gl_functions, glGenFramebuffers, glGenFramebuffers);
 GET_PROC(init_gl_functions, glDeleteFramebuffers, glDeleteFramebuffers);
 GET_PROC(init_gl_functions, glBindFramebuffer, glBindFramebuffer);
 GET_PROC(init_gl_functions, glBlitFramebuffer, glBlitFramebuffer);
 GET_PROC(init_gl_functions, glFramebufferTexture2D,
   glFramebufferTexture2D);

 init_nv_functions();
 return success;
}
