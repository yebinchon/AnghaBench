
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMULTIMODEDRAWELEMENTSIBMPROC ;
typedef scalar_t__ PFNGLMULTIMODEDRAWARRAYSIBMPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_IBM_multimode_draw_arrays ;
 scalar_t__ glad_glMultiModeDrawArraysIBM ;
 scalar_t__ glad_glMultiModeDrawElementsIBM ;

__attribute__((used)) static void load_GL_IBM_multimode_draw_arrays(GLADloadproc load) {
 if(!GLAD_GL_IBM_multimode_draw_arrays) return;
 glad_glMultiModeDrawArraysIBM = (PFNGLMULTIMODEDRAWARRAYSIBMPROC)load("glMultiModeDrawArraysIBM");
 glad_glMultiModeDrawElementsIBM = (PFNGLMULTIMODEDRAWELEMENTSIBMPROC)load("glMultiModeDrawElementsIBM");
}
