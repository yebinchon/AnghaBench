
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMULTIDRAWELEMENTSINDIRECTAMDPROC ;
typedef scalar_t__ PFNGLMULTIDRAWARRAYSINDIRECTAMDPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_AMD_multi_draw_indirect ;
 scalar_t__ glad_glMultiDrawArraysIndirectAMD ;
 scalar_t__ glad_glMultiDrawElementsIndirectAMD ;

__attribute__((used)) static void load_GL_AMD_multi_draw_indirect(GLADloadproc load) {
 if(!GLAD_GL_AMD_multi_draw_indirect) return;
 glad_glMultiDrawArraysIndirectAMD = (PFNGLMULTIDRAWARRAYSINDIRECTAMDPROC)load("glMultiDrawArraysIndirectAMD");
 glad_glMultiDrawElementsIndirectAMD = (PFNGLMULTIDRAWELEMENTSINDIRECTAMDPROC)load("glMultiDrawElementsIndirectAMD");
}
