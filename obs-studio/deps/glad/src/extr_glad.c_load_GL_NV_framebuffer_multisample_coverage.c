
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_framebuffer_multisample_coverage ;
 scalar_t__ glad_glRenderbufferStorageMultisampleCoverageNV ;

__attribute__((used)) static void load_GL_NV_framebuffer_multisample_coverage(GLADloadproc load) {
 if(!GLAD_GL_NV_framebuffer_multisample_coverage) return;
 glad_glRenderbufferStorageMultisampleCoverageNV = (PFNGLRENDERBUFFERSTORAGEMULTISAMPLECOVERAGENVPROC)load("glRenderbufferStorageMultisampleCoverageNV");
}
