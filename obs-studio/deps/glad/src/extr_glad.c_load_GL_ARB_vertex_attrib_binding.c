
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLVERTEXBINDINGDIVISORPROC ;
typedef scalar_t__ PFNGLVERTEXATTRIBLFORMATPROC ;
typedef scalar_t__ PFNGLVERTEXATTRIBIFORMATPROC ;
typedef scalar_t__ PFNGLVERTEXATTRIBFORMATPROC ;
typedef scalar_t__ PFNGLVERTEXATTRIBBINDINGPROC ;
typedef scalar_t__ PFNGLBINDVERTEXBUFFERPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_vertex_attrib_binding ;
 scalar_t__ glad_glBindVertexBuffer ;
 scalar_t__ glad_glVertexAttribBinding ;
 scalar_t__ glad_glVertexAttribFormat ;
 scalar_t__ glad_glVertexAttribIFormat ;
 scalar_t__ glad_glVertexAttribLFormat ;
 scalar_t__ glad_glVertexBindingDivisor ;

__attribute__((used)) static void load_GL_ARB_vertex_attrib_binding(GLADloadproc load) {
 if(!GLAD_GL_ARB_vertex_attrib_binding) return;
 glad_glBindVertexBuffer = (PFNGLBINDVERTEXBUFFERPROC)load("glBindVertexBuffer");
 glad_glVertexAttribFormat = (PFNGLVERTEXATTRIBFORMATPROC)load("glVertexAttribFormat");
 glad_glVertexAttribIFormat = (PFNGLVERTEXATTRIBIFORMATPROC)load("glVertexAttribIFormat");
 glad_glVertexAttribLFormat = (PFNGLVERTEXATTRIBLFORMATPROC)load("glVertexAttribLFormat");
 glad_glVertexAttribBinding = (PFNGLVERTEXATTRIBBINDINGPROC)load("glVertexAttribBinding");
 glad_glVertexBindingDivisor = (PFNGLVERTEXBINDINGDIVISORPROC)load("glVertexBindingDivisor");
}
