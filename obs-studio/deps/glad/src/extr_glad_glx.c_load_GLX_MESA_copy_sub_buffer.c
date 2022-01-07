
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXCOPYSUBBUFFERMESAPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_MESA_copy_sub_buffer ;
 scalar_t__ glad_glXCopySubBufferMESA ;

__attribute__((used)) static void load_GLX_MESA_copy_sub_buffer(GLADloadproc load) {
 if(!GLAD_GLX_MESA_copy_sub_buffer) return;
 glad_glXCopySubBufferMESA = (PFNGLXCOPYSUBBUFFERMESAPROC)load("glXCopySubBufferMESA");
}
