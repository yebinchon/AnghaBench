
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLQUERYOBJECTPARAMETERUIAMDPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_AMD_occlusion_query_event ;
 scalar_t__ glad_glQueryObjectParameteruiAMD ;

__attribute__((used)) static void load_GL_AMD_occlusion_query_event(GLADloadproc load) {
 if(!GLAD_GL_AMD_occlusion_query_event) return;
 glad_glQueryObjectParameteruiAMD = (PFNGLQUERYOBJECTPARAMETERUIAMDPROC)load("glQueryObjectParameteruiAMD");
}
