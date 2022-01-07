
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXASSOCIATEDMPBUFFERSGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_SGIX_dmbuffer ;
 scalar_t__ glad_glXAssociateDMPbufferSGIX ;

__attribute__((used)) static void load_GLX_SGIX_dmbuffer(GLADloadproc load) {
 if(!GLAD_GLX_SGIX_dmbuffer) return;



 (void)load;

}
