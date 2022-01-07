
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXGETPROCADDRESSARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_ARB_get_proc_address ;
 scalar_t__ glad_glXGetProcAddressARB ;

__attribute__((used)) static void load_GLX_ARB_get_proc_address(GLADloadproc load) {
 if(!GLAD_GLX_ARB_get_proc_address) return;
 glad_glXGetProcAddressARB = (PFNGLXGETPROCADDRESSARBPROC)load("glXGetProcAddressARB");
}
