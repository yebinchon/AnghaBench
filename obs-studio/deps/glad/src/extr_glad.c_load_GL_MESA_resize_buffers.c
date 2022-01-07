
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLRESIZEBUFFERSMESAPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_MESA_resize_buffers ;
 scalar_t__ glad_glResizeBuffersMESA ;

__attribute__((used)) static void load_GL_MESA_resize_buffers(GLADloadproc load) {
 if(!GLAD_GL_MESA_resize_buffers) return;
 glad_glResizeBuffersMESA = (PFNGLRESIZEBUFFERSMESAPROC)load("glResizeBuffersMESA");
}
