
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMULTIDRAWELEMENTSINDIRECTPROC ;
typedef scalar_t__ PFNGLMULTIDRAWARRAYSINDIRECTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_multi_draw_indirect ;
 scalar_t__ glad_glMultiDrawArraysIndirect ;
 scalar_t__ glad_glMultiDrawElementsIndirect ;

__attribute__((used)) static void load_GL_ARB_multi_draw_indirect(GLADloadproc load) {
 if(!GLAD_GL_ARB_multi_draw_indirect) return;
 glad_glMultiDrawArraysIndirect = (PFNGLMULTIDRAWARRAYSINDIRECTPROC)load("glMultiDrawArraysIndirect");
 glad_glMultiDrawElementsIndirect = (PFNGLMULTIDRAWELEMENTSINDIRECTPROC)load("glMultiDrawElementsIndirect");
}
