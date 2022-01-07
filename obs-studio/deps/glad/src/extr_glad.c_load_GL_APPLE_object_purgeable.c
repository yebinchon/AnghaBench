
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLOBJECTUNPURGEABLEAPPLEPROC ;
typedef scalar_t__ PFNGLOBJECTPURGEABLEAPPLEPROC ;
typedef scalar_t__ PFNGLGETOBJECTPARAMETERIVAPPLEPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_APPLE_object_purgeable ;
 scalar_t__ glad_glGetObjectParameterivAPPLE ;
 scalar_t__ glad_glObjectPurgeableAPPLE ;
 scalar_t__ glad_glObjectUnpurgeableAPPLE ;

__attribute__((used)) static void load_GL_APPLE_object_purgeable(GLADloadproc load) {
 if(!GLAD_GL_APPLE_object_purgeable) return;
 glad_glObjectPurgeableAPPLE = (PFNGLOBJECTPURGEABLEAPPLEPROC)load("glObjectPurgeableAPPLE");
 glad_glObjectUnpurgeableAPPLE = (PFNGLOBJECTUNPURGEABLEAPPLEPROC)load("glObjectUnpurgeableAPPLE");
 glad_glGetObjectParameterivAPPLE = (PFNGLGETOBJECTPARAMETERIVAPPLEPROC)load("glGetObjectParameterivAPPLE");
}
