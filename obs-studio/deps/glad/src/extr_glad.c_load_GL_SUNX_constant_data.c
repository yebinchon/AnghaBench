
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLFINISHTEXTURESUNXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SUNX_constant_data ;
 scalar_t__ glad_glFinishTextureSUNX ;

__attribute__((used)) static void load_GL_SUNX_constant_data(GLADloadproc load) {
 if(!GLAD_GL_SUNX_constant_data) return;
 glad_glFinishTextureSUNX = (PFNGLFINISHTEXTURESUNXPROC)load("glFinishTextureSUNX");
}
