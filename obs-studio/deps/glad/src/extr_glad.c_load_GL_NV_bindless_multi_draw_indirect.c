
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSNVPROC ;
typedef scalar_t__ PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_bindless_multi_draw_indirect ;
 scalar_t__ glad_glMultiDrawArraysIndirectBindlessNV ;
 scalar_t__ glad_glMultiDrawElementsIndirectBindlessNV ;

__attribute__((used)) static void load_GL_NV_bindless_multi_draw_indirect(GLADloadproc load) {
 if(!GLAD_GL_NV_bindless_multi_draw_indirect) return;
 glad_glMultiDrawArraysIndirectBindlessNV = (PFNGLMULTIDRAWARRAYSINDIRECTBINDLESSNVPROC)load("glMultiDrawArraysIndirectBindlessNV");
 glad_glMultiDrawElementsIndirectBindlessNV = (PFNGLMULTIDRAWELEMENTSINDIRECTBINDLESSNVPROC)load("glMultiDrawElementsIndirectBindlessNV");
}
