
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETPROGRAMRESOURCENAMEPROC ;
typedef scalar_t__ PFNGLGETPROGRAMRESOURCELOCATIONPROC ;
typedef scalar_t__ PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC ;
typedef scalar_t__ PFNGLGETPROGRAMRESOURCEIVPROC ;
typedef scalar_t__ PFNGLGETPROGRAMRESOURCEINDEXPROC ;
typedef scalar_t__ PFNGLGETPROGRAMINTERFACEIVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_program_interface_query ;
 scalar_t__ glad_glGetProgramInterfaceiv ;
 scalar_t__ glad_glGetProgramResourceIndex ;
 scalar_t__ glad_glGetProgramResourceLocation ;
 scalar_t__ glad_glGetProgramResourceLocationIndex ;
 scalar_t__ glad_glGetProgramResourceName ;
 scalar_t__ glad_glGetProgramResourceiv ;

__attribute__((used)) static void load_GL_ARB_program_interface_query(GLADloadproc load) {
 if(!GLAD_GL_ARB_program_interface_query) return;
 glad_glGetProgramInterfaceiv = (PFNGLGETPROGRAMINTERFACEIVPROC)load("glGetProgramInterfaceiv");
 glad_glGetProgramResourceIndex = (PFNGLGETPROGRAMRESOURCEINDEXPROC)load("glGetProgramResourceIndex");
 glad_glGetProgramResourceName = (PFNGLGETPROGRAMRESOURCENAMEPROC)load("glGetProgramResourceName");
 glad_glGetProgramResourceiv = (PFNGLGETPROGRAMRESOURCEIVPROC)load("glGetProgramResourceiv");
 glad_glGetProgramResourceLocation = (PFNGLGETPROGRAMRESOURCELOCATIONPROC)load("glGetProgramResourceLocation");
 glad_glGetProgramResourceLocationIndex = (PFNGLGETPROGRAMRESOURCELOCATIONINDEXPROC)load("glGetProgramResourceLocationIndex");
}
