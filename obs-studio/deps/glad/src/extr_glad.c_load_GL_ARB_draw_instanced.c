
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWELEMENTSINSTANCEDARBPROC ;
typedef scalar_t__ PFNGLDRAWARRAYSINSTANCEDARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_draw_instanced ;
 scalar_t__ glad_glDrawArraysInstancedARB ;
 scalar_t__ glad_glDrawElementsInstancedARB ;

__attribute__((used)) static void load_GL_ARB_draw_instanced(GLADloadproc load) {
 if(!GLAD_GL_ARB_draw_instanced) return;
 glad_glDrawArraysInstancedARB = (PFNGLDRAWARRAYSINSTANCEDARBPROC)load("glDrawArraysInstancedARB");
 glad_glDrawElementsInstancedARB = (PFNGLDRAWELEMENTSINSTANCEDARBPROC)load("glDrawElementsInstancedARB");
}
