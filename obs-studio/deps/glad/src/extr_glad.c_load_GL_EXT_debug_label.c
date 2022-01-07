
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLLABELOBJECTEXTPROC ;
typedef scalar_t__ PFNGLGETOBJECTLABELEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_debug_label ;
 scalar_t__ glad_glGetObjectLabelEXT ;
 scalar_t__ glad_glLabelObjectEXT ;

__attribute__((used)) static void load_GL_EXT_debug_label(GLADloadproc load) {
 if(!GLAD_GL_EXT_debug_label) return;
 glad_glLabelObjectEXT = (PFNGLLABELOBJECTEXTPROC)load("glLabelObjectEXT");
 glad_glGetObjectLabelEXT = (PFNGLGETOBJECTLABELEXTPROC)load("glGetObjectLabelEXT");
}
