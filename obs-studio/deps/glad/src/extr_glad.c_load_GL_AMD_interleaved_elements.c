
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLVERTEXATTRIBPARAMETERIAMDPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_AMD_interleaved_elements ;
 scalar_t__ glad_glVertexAttribParameteriAMD ;

__attribute__((used)) static void load_GL_AMD_interleaved_elements(GLADloadproc load) {
 if(!GLAD_GL_AMD_interleaved_elements) return;
 glad_glVertexAttribParameteriAMD = (PFNGLVERTEXATTRIBPARAMETERIAMDPROC)load("glVertexAttribParameteriAMD");
}
