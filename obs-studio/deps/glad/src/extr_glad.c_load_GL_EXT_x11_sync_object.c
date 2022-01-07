
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLIMPORTSYNCEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_x11_sync_object ;
 scalar_t__ glad_glImportSyncEXT ;

__attribute__((used)) static void load_GL_EXT_x11_sync_object(GLADloadproc load) {
 if(!GLAD_GL_EXT_x11_sync_object) return;
 glad_glImportSyncEXT = (PFNGLIMPORTSYNCEXTPROC)load("glImportSyncEXT");
}
