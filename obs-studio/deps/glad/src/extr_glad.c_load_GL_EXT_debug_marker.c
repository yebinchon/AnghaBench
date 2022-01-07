
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPUSHGROUPMARKEREXTPROC ;
typedef scalar_t__ PFNGLPOPGROUPMARKEREXTPROC ;
typedef scalar_t__ PFNGLINSERTEVENTMARKEREXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_debug_marker ;
 scalar_t__ glad_glInsertEventMarkerEXT ;
 scalar_t__ glad_glPopGroupMarkerEXT ;
 scalar_t__ glad_glPushGroupMarkerEXT ;

__attribute__((used)) static void load_GL_EXT_debug_marker(GLADloadproc load) {
 if(!GLAD_GL_EXT_debug_marker) return;
 glad_glInsertEventMarkerEXT = (PFNGLINSERTEVENTMARKEREXTPROC)load("glInsertEventMarkerEXT");
 glad_glPushGroupMarkerEXT = (PFNGLPUSHGROUPMARKEREXTPROC)load("glPushGroupMarkerEXT");
 glad_glPopGroupMarkerEXT = (PFNGLPOPGROUPMARKEREXTPROC)load("glPopGroupMarkerEXT");
}
