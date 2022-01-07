
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWBUFFERSATIPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ATI_draw_buffers ;
 scalar_t__ glad_glDrawBuffersATI ;

__attribute__((used)) static void load_GL_ATI_draw_buffers(GLADloadproc load) {
 if(!GLAD_GL_ATI_draw_buffers) return;
 glad_glDrawBuffersATI = (PFNGLDRAWBUFFERSATIPROC)load("glDrawBuffersATI");
}
