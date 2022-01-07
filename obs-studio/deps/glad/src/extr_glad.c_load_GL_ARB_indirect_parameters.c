
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTARBPROC ;
typedef scalar_t__ PFNGLMULTIDRAWARRAYSINDIRECTCOUNTARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_indirect_parameters ;
 scalar_t__ glad_glMultiDrawArraysIndirectCountARB ;
 scalar_t__ glad_glMultiDrawElementsIndirectCountARB ;

__attribute__((used)) static void load_GL_ARB_indirect_parameters(GLADloadproc load) {
 if(!GLAD_GL_ARB_indirect_parameters) return;
 glad_glMultiDrawArraysIndirectCountARB = (PFNGLMULTIDRAWARRAYSINDIRECTCOUNTARBPROC)load("glMultiDrawArraysIndirectCountARB");
 glad_glMultiDrawElementsIndirectCountARB = (PFNGLMULTIDRAWELEMENTSINDIRECTCOUNTARBPROC)load("glMultiDrawElementsIndirectCountARB");
}
