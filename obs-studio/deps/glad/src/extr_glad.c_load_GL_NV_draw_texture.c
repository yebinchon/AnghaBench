
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWTEXTURENVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_NV_draw_texture ;
 scalar_t__ glad_glDrawTextureNV ;

__attribute__((used)) static void load_GL_NV_draw_texture(GLADloadproc load) {
 if(!GLAD_GL_NV_draw_texture) return;
 glad_glDrawTextureNV = (PFNGLDRAWTEXTURENVPROC)load("glDrawTextureNV");
}
