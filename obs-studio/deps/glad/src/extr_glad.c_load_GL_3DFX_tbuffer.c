
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTBUFFERMASK3DFXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_3DFX_tbuffer ;
 scalar_t__ glad_glTbufferMask3DFX ;

__attribute__((used)) static void load_GL_3DFX_tbuffer(GLADloadproc load) {
 if(!GLAD_GL_3DFX_tbuffer) return;
 glad_glTbufferMask3DFX = (PFNGLTBUFFERMASK3DFXPROC)load("glTbufferMask3DFX");
}
