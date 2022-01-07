
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLISENABLEDINDEXEDEXTPROC ;
typedef scalar_t__ PFNGLGETINTEGERINDEXEDVEXTPROC ;
typedef scalar_t__ PFNGLGETBOOLEANINDEXEDVEXTPROC ;
typedef scalar_t__ PFNGLENABLEINDEXEDEXTPROC ;
typedef scalar_t__ PFNGLDISABLEINDEXEDEXTPROC ;
typedef scalar_t__ PFNGLCOLORMASKINDEXEDEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_draw_buffers2 ;
 scalar_t__ glad_glColorMaskIndexedEXT ;
 scalar_t__ glad_glDisableIndexedEXT ;
 scalar_t__ glad_glEnableIndexedEXT ;
 scalar_t__ glad_glGetBooleanIndexedvEXT ;
 scalar_t__ glad_glGetIntegerIndexedvEXT ;
 scalar_t__ glad_glIsEnabledIndexedEXT ;

__attribute__((used)) static void load_GL_EXT_draw_buffers2(GLADloadproc load) {
 if(!GLAD_GL_EXT_draw_buffers2) return;
 glad_glColorMaskIndexedEXT = (PFNGLCOLORMASKINDEXEDEXTPROC)load("glColorMaskIndexedEXT");
 glad_glGetBooleanIndexedvEXT = (PFNGLGETBOOLEANINDEXEDVEXTPROC)load("glGetBooleanIndexedvEXT");
 glad_glGetIntegerIndexedvEXT = (PFNGLGETINTEGERINDEXEDVEXTPROC)load("glGetIntegerIndexedvEXT");
 glad_glEnableIndexedEXT = (PFNGLENABLEINDEXEDEXTPROC)load("glEnableIndexedEXT");
 glad_glDisableIndexedEXT = (PFNGLDISABLEINDEXEDEXTPROC)load("glDisableIndexedEXT");
 glad_glIsEnabledIndexedEXT = (PFNGLISENABLEDINDEXEDEXTPROC)load("glIsEnabledIndexedEXT");
}
