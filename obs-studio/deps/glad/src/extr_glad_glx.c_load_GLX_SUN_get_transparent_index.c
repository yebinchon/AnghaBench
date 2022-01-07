
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXGETTRANSPARENTINDEXSUNPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_SUN_get_transparent_index ;
 scalar_t__ glad_glXGetTransparentIndexSUN ;

__attribute__((used)) static void load_GLX_SUN_get_transparent_index(GLADloadproc load) {
 if(!GLAD_GLX_SUN_get_transparent_index) return;
 glad_glXGetTransparentIndexSUN = (PFNGLXGETTRANSPARENTINDEXSUNPROC)load("glXGetTransparentIndexSUN");
}
