
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXTURECOLORMASKSGISPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SGIS_texture_color_mask ;
 scalar_t__ glad_glTextureColorMaskSGIS ;

__attribute__((used)) static void load_GL_SGIS_texture_color_mask(GLADloadproc load) {
 if(!GLAD_GL_SGIS_texture_color_mask) return;
 glad_glTextureColorMaskSGIS = (PFNGLTEXTURECOLORMASKSGISPROC)load("glTextureColorMaskSGIS");
}
