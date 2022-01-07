
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXQUERYHYPERPIPENETWORKSGIXPROC ;
typedef scalar_t__ PFNGLXQUERYHYPERPIPECONFIGSGIXPROC ;
typedef scalar_t__ PFNGLXQUERYHYPERPIPEBESTATTRIBSGIXPROC ;
typedef scalar_t__ PFNGLXQUERYHYPERPIPEATTRIBSGIXPROC ;
typedef scalar_t__ PFNGLXHYPERPIPECONFIGSGIXPROC ;
typedef scalar_t__ PFNGLXHYPERPIPEATTRIBSGIXPROC ;
typedef scalar_t__ PFNGLXDESTROYHYPERPIPECONFIGSGIXPROC ;
typedef scalar_t__ PFNGLXBINDHYPERPIPESGIXPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_SGIX_hyperpipe ;
 scalar_t__ glad_glXBindHyperpipeSGIX ;
 scalar_t__ glad_glXDestroyHyperpipeConfigSGIX ;
 scalar_t__ glad_glXHyperpipeAttribSGIX ;
 scalar_t__ glad_glXHyperpipeConfigSGIX ;
 scalar_t__ glad_glXQueryHyperpipeAttribSGIX ;
 scalar_t__ glad_glXQueryHyperpipeBestAttribSGIX ;
 scalar_t__ glad_glXQueryHyperpipeConfigSGIX ;
 scalar_t__ glad_glXQueryHyperpipeNetworkSGIX ;

__attribute__((used)) static void load_GLX_SGIX_hyperpipe(GLADloadproc load) {
 if(!GLAD_GLX_SGIX_hyperpipe) return;
 glad_glXQueryHyperpipeNetworkSGIX = (PFNGLXQUERYHYPERPIPENETWORKSGIXPROC)load("glXQueryHyperpipeNetworkSGIX");
 glad_glXHyperpipeConfigSGIX = (PFNGLXHYPERPIPECONFIGSGIXPROC)load("glXHyperpipeConfigSGIX");
 glad_glXQueryHyperpipeConfigSGIX = (PFNGLXQUERYHYPERPIPECONFIGSGIXPROC)load("glXQueryHyperpipeConfigSGIX");
 glad_glXDestroyHyperpipeConfigSGIX = (PFNGLXDESTROYHYPERPIPECONFIGSGIXPROC)load("glXDestroyHyperpipeConfigSGIX");
 glad_glXBindHyperpipeSGIX = (PFNGLXBINDHYPERPIPESGIXPROC)load("glXBindHyperpipeSGIX");
 glad_glXQueryHyperpipeBestAttribSGIX = (PFNGLXQUERYHYPERPIPEBESTATTRIBSGIXPROC)load("glXQueryHyperpipeBestAttribSGIX");
 glad_glXHyperpipeAttribSGIX = (PFNGLXHYPERPIPEATTRIBSGIXPROC)load("glXHyperpipeAttribSGIX");
 glad_glXQueryHyperpipeAttribSGIX = (PFNGLXQUERYHYPERPIPEATTRIBSGIXPROC)load("glXQueryHyperpipeAttribSGIX");
}
