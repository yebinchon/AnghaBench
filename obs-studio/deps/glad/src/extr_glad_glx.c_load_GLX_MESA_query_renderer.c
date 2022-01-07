
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXQUERYRENDERERSTRINGMESAPROC ;
typedef scalar_t__ PFNGLXQUERYRENDERERINTEGERMESAPROC ;
typedef scalar_t__ PFNGLXQUERYCURRENTRENDERERSTRINGMESAPROC ;
typedef scalar_t__ PFNGLXQUERYCURRENTRENDERERINTEGERMESAPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GLX_MESA_query_renderer ;
 scalar_t__ glad_glXQueryCurrentRendererIntegerMESA ;
 scalar_t__ glad_glXQueryCurrentRendererStringMESA ;
 scalar_t__ glad_glXQueryRendererIntegerMESA ;
 scalar_t__ glad_glXQueryRendererStringMESA ;

__attribute__((used)) static void load_GLX_MESA_query_renderer(GLADloadproc load) {
 if(!GLAD_GLX_MESA_query_renderer) return;
 glad_glXQueryCurrentRendererIntegerMESA = (PFNGLXQUERYCURRENTRENDERERINTEGERMESAPROC)load("glXQueryCurrentRendererIntegerMESA");
 glad_glXQueryCurrentRendererStringMESA = (PFNGLXQUERYCURRENTRENDERERSTRINGMESAPROC)load("glXQueryCurrentRendererStringMESA");
 glad_glXQueryRendererIntegerMESA = (PFNGLXQUERYRENDERERINTEGERMESAPROC)load("glXQueryRendererIntegerMESA");
 glad_glXQueryRendererStringMESA = (PFNGLXQUERYRENDERERSTRINGMESAPROC)load("glXQueryRendererStringMESA");
}
