
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLVERTEXATTRIBARRAYOBJECTATIPROC ;
typedef scalar_t__ PFNGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC ;
typedef scalar_t__ PFNGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ATI_vertex_attrib_array_object ;
 scalar_t__ glad_glGetVertexAttribArrayObjectfvATI ;
 scalar_t__ glad_glGetVertexAttribArrayObjectivATI ;
 scalar_t__ glad_glVertexAttribArrayObjectATI ;

__attribute__((used)) static void load_GL_ATI_vertex_attrib_array_object(GLADloadproc load) {
 if(!GLAD_GL_ATI_vertex_attrib_array_object) return;
 glad_glVertexAttribArrayObjectATI = (PFNGLVERTEXATTRIBARRAYOBJECTATIPROC)load("glVertexAttribArrayObjectATI");
 glad_glGetVertexAttribArrayObjectfvATI = (PFNGLGETVERTEXATTRIBARRAYOBJECTFVATIPROC)load("glGetVertexAttribArrayObjectfvATI");
 glad_glGetVertexAttribArrayObjectivATI = (PFNGLGETVERTEXATTRIBARRAYOBJECTIVATIPROC)load("glGetVertexAttribArrayObjectivATI");
}
