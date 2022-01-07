
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTRANSFORMFEEDBACKVARYINGSEXTPROC ;
typedef scalar_t__ PFNGLGETTRANSFORMFEEDBACKVARYINGEXTPROC ;
typedef scalar_t__ PFNGLENDTRANSFORMFEEDBACKEXTPROC ;
typedef scalar_t__ PFNGLBINDBUFFERRANGEEXTPROC ;
typedef scalar_t__ PFNGLBINDBUFFEROFFSETEXTPROC ;
typedef scalar_t__ PFNGLBINDBUFFERBASEEXTPROC ;
typedef scalar_t__ PFNGLBEGINTRANSFORMFEEDBACKEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_transform_feedback ;
 scalar_t__ glad_glBeginTransformFeedbackEXT ;
 scalar_t__ glad_glBindBufferBaseEXT ;
 scalar_t__ glad_glBindBufferOffsetEXT ;
 scalar_t__ glad_glBindBufferRangeEXT ;
 scalar_t__ glad_glEndTransformFeedbackEXT ;
 scalar_t__ glad_glGetTransformFeedbackVaryingEXT ;
 scalar_t__ glad_glTransformFeedbackVaryingsEXT ;

__attribute__((used)) static void load_GL_EXT_transform_feedback(GLADloadproc load) {
 if(!GLAD_GL_EXT_transform_feedback) return;
 glad_glBeginTransformFeedbackEXT = (PFNGLBEGINTRANSFORMFEEDBACKEXTPROC)load("glBeginTransformFeedbackEXT");
 glad_glEndTransformFeedbackEXT = (PFNGLENDTRANSFORMFEEDBACKEXTPROC)load("glEndTransformFeedbackEXT");
 glad_glBindBufferRangeEXT = (PFNGLBINDBUFFERRANGEEXTPROC)load("glBindBufferRangeEXT");
 glad_glBindBufferOffsetEXT = (PFNGLBINDBUFFEROFFSETEXTPROC)load("glBindBufferOffsetEXT");
 glad_glBindBufferBaseEXT = (PFNGLBINDBUFFERBASEEXTPROC)load("glBindBufferBaseEXT");
 glad_glTransformFeedbackVaryingsEXT = (PFNGLTRANSFORMFEEDBACKVARYINGSEXTPROC)load("glTransformFeedbackVaryingsEXT");
 glad_glGetTransformFeedbackVaryingEXT = (PFNGLGETTRANSFORMFEEDBACKVARYINGEXTPROC)load("glGetTransformFeedbackVaryingEXT");
}
