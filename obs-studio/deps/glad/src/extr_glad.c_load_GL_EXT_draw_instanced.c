
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWELEMENTSINSTANCEDEXTPROC ;
typedef scalar_t__ PFNGLDRAWARRAYSINSTANCEDEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_draw_instanced ;
 scalar_t__ glad_glDrawArraysInstancedEXT ;
 scalar_t__ glad_glDrawElementsInstancedEXT ;

__attribute__((used)) static void load_GL_EXT_draw_instanced(GLADloadproc load) {
 if(!GLAD_GL_EXT_draw_instanced) return;
 glad_glDrawArraysInstancedEXT = (PFNGLDRAWARRAYSINSTANCEDEXTPROC)load("glDrawArraysInstancedEXT");
 glad_glDrawElementsInstancedEXT = (PFNGLDRAWELEMENTSINSTANCEDEXTPROC)load("glDrawElementsInstancedEXT");
}
