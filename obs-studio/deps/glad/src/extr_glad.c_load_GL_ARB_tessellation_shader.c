
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPATCHPARAMETERIPROC ;
typedef scalar_t__ PFNGLPATCHPARAMETERFVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_tessellation_shader ;
 scalar_t__ glad_glPatchParameterfv ;
 scalar_t__ glad_glPatchParameteri ;

__attribute__((used)) static void load_GL_ARB_tessellation_shader(GLADloadproc load) {
 if(!GLAD_GL_ARB_tessellation_shader) return;
 glad_glPatchParameteri = (PFNGLPATCHPARAMETERIPROC)load("glPatchParameteri");
 glad_glPatchParameterfv = (PFNGLPATCHPARAMETERFVPROC)load("glPatchParameterfv");
}
