
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLVERTEXWEIGHTPOINTEREXTPROC ;
typedef scalar_t__ PFNGLVERTEXWEIGHTFVEXTPROC ;
typedef scalar_t__ PFNGLVERTEXWEIGHTFEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_vertex_weighting ;
 scalar_t__ glad_glVertexWeightPointerEXT ;
 scalar_t__ glad_glVertexWeightfEXT ;
 scalar_t__ glad_glVertexWeightfvEXT ;

__attribute__((used)) static void load_GL_EXT_vertex_weighting(GLADloadproc load) {
 if(!GLAD_GL_EXT_vertex_weighting) return;
 glad_glVertexWeightfEXT = (PFNGLVERTEXWEIGHTFEXTPROC)load("glVertexWeightfEXT");
 glad_glVertexWeightfvEXT = (PFNGLVERTEXWEIGHTFVEXTPROC)load("glVertexWeightfvEXT");
 glad_glVertexWeightPointerEXT = (PFNGLVERTEXWEIGHTPOINTEREXTPROC)load("glVertexWeightPointerEXT");
}
