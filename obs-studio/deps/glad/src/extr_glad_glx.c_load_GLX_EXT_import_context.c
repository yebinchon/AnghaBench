
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXQUERYCONTEXTINFOEXTPROC ;
typedef scalar_t__ PFNGLXIMPORTCONTEXTEXTPROC ;
typedef scalar_t__ PFNGLXGETCURRENTDISPLAYEXTPROC ;
typedef scalar_t__ PFNGLXGETCONTEXTIDEXTPROC ;
typedef scalar_t__ PFNGLXFREECONTEXTEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_EXT_import_context ;
 scalar_t__ glad_glXFreeContextEXT ;
 scalar_t__ glad_glXGetContextIDEXT ;
 scalar_t__ glad_glXGetCurrentDisplayEXT ;
 scalar_t__ glad_glXImportContextEXT ;
 scalar_t__ glad_glXQueryContextInfoEXT ;

__attribute__((used)) static void load_GLX_EXT_import_context(GLADloadproc load) {
 if(!GLAD_GLX_EXT_import_context) return;
 glad_glXGetCurrentDisplayEXT = (PFNGLXGETCURRENTDISPLAYEXTPROC)load("glXGetCurrentDisplayEXT");
 glad_glXQueryContextInfoEXT = (PFNGLXQUERYCONTEXTINFOEXTPROC)load("glXQueryContextInfoEXT");
 glad_glXGetContextIDEXT = (PFNGLXGETCONTEXTIDEXTPROC)load("glXGetContextIDEXT");
 glad_glXImportContextEXT = (PFNGLXIMPORTCONTEXTEXTPROC)load("glXImportContextEXT");
 glad_glXFreeContextEXT = (PFNGLXFREECONTEXTEXTPROC)load("glXFreeContextEXT");
}
