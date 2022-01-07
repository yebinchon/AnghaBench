
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLQUERYCOUNTERPROC ;
typedef scalar_t__ PFNGLGETQUERYOBJECTUI64VPROC ;
typedef scalar_t__ PFNGLGETQUERYOBJECTI64VPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_timer_query ;
 scalar_t__ glad_glGetQueryObjecti64v ;
 scalar_t__ glad_glGetQueryObjectui64v ;
 scalar_t__ glad_glQueryCounter ;

__attribute__((used)) static void load_GL_ARB_timer_query(GLADloadproc load) {
 if(!GLAD_GL_ARB_timer_query) return;
 glad_glQueryCounter = (PFNGLQUERYCOUNTERPROC)load("glQueryCounter");
 glad_glGetQueryObjecti64v = (PFNGLGETQUERYOBJECTI64VPROC)load("glGetQueryObjecti64v");
 glad_glGetQueryObjectui64v = (PFNGLGETQUERYOBJECTUI64VPROC)load("glGetQueryObjectui64v");
}
