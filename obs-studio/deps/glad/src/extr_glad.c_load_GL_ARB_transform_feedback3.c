
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETQUERYINDEXEDIVPROC ;
typedef scalar_t__ PFNGLENDQUERYINDEXEDPROC ;
typedef scalar_t__ PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC ;
typedef scalar_t__ PFNGLBEGINQUERYINDEXEDPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_transform_feedback3 ;
 scalar_t__ glad_glBeginQueryIndexed ;
 scalar_t__ glad_glDrawTransformFeedbackStream ;
 scalar_t__ glad_glEndQueryIndexed ;
 scalar_t__ glad_glGetQueryIndexediv ;

__attribute__((used)) static void load_GL_ARB_transform_feedback3(GLADloadproc load) {
 if(!GLAD_GL_ARB_transform_feedback3) return;
 glad_glDrawTransformFeedbackStream = (PFNGLDRAWTRANSFORMFEEDBACKSTREAMPROC)load("glDrawTransformFeedbackStream");
 glad_glBeginQueryIndexed = (PFNGLBEGINQUERYINDEXEDPROC)load("glBeginQueryIndexed");
 glad_glEndQueryIndexed = (PFNGLENDQUERYINDEXEDPROC)load("glEndQueryIndexed");
 glad_glGetQueryIndexediv = (PFNGLGETQUERYINDEXEDIVPROC)load("glGetQueryIndexediv");
}
