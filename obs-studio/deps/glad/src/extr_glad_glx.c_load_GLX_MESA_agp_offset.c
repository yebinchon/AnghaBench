
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXGETAGPOFFSETMESAPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_MESA_agp_offset ;
 scalar_t__ glad_glXGetAGPOffsetMESA ;

__attribute__((used)) static void load_GLX_MESA_agp_offset(GLADloadproc load) {
 if(!GLAD_GLX_MESA_agp_offset) return;
 glad_glXGetAGPOffsetMESA = (PFNGLXGETAGPOFFSETMESAPROC)load("glXGetAGPOffsetMESA");
}
