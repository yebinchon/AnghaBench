
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLCOPYBUFFERSUBDATAPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_copy_buffer ;
 scalar_t__ glad_glCopyBufferSubData ;

__attribute__((used)) static void load_GL_ARB_copy_buffer(GLADloadproc load) {
 if(!GLAD_GL_ARB_copy_buffer) return;
 glad_glCopyBufferSubData = (PFNGLCOPYBUFFERSUBDATAPROC)load("glCopyBufferSubData");
}
