
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLCREATESYNCFROMCLEVENTARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_cl_event ;
 scalar_t__ glad_glCreateSyncFromCLeventARB ;

__attribute__((used)) static void load_GL_ARB_cl_event(GLADloadproc load) {
 if(!GLAD_GL_ARB_cl_event) return;
 glad_glCreateSyncFromCLeventARB = (PFNGLCREATESYNCFROMCLEVENTARBPROC)load("glCreateSyncFromCLeventARB");
}
