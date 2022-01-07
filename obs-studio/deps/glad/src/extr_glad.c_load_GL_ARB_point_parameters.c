
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPOINTPARAMETERFVARBPROC ;
typedef scalar_t__ PFNGLPOINTPARAMETERFARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_point_parameters ;
 scalar_t__ glad_glPointParameterfARB ;
 scalar_t__ glad_glPointParameterfvARB ;

__attribute__((used)) static void load_GL_ARB_point_parameters(GLADloadproc load) {
 if(!GLAD_GL_ARB_point_parameters) return;
 glad_glPointParameterfARB = (PFNGLPOINTPARAMETERFARBPROC)load("glPointParameterfARB");
 glad_glPointParameterfvARB = (PFNGLPOINTPARAMETERFVARBPROC)load("glPointParameterfvARB");
}
