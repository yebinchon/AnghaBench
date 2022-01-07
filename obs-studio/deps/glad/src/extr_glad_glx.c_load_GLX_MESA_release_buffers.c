
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXRELEASEBUFFERSMESAPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_MESA_release_buffers ;
 scalar_t__ glad_glXReleaseBuffersMESA ;

__attribute__((used)) static void load_GLX_MESA_release_buffers(GLADloadproc load) {
 if(!GLAD_GLX_MESA_release_buffers) return;
 glad_glXReleaseBuffersMESA = (PFNGLXRELEASEBUFFERSMESAPROC)load("glXReleaseBuffersMESA");
}
