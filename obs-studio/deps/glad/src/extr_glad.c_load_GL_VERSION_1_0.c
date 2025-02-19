
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLVIEWPORTPROC ;
typedef scalar_t__ PFNGLTEXPARAMETERIVPROC ;
typedef scalar_t__ PFNGLTEXPARAMETERIPROC ;
typedef scalar_t__ PFNGLTEXPARAMETERFVPROC ;
typedef scalar_t__ PFNGLTEXPARAMETERFPROC ;
typedef scalar_t__ PFNGLTEXIMAGE2DPROC ;
typedef scalar_t__ PFNGLTEXIMAGE1DPROC ;
typedef scalar_t__ PFNGLSTENCILOPPROC ;
typedef scalar_t__ PFNGLSTENCILMASKPROC ;
typedef scalar_t__ PFNGLSTENCILFUNCPROC ;
typedef scalar_t__ PFNGLSCISSORPROC ;
typedef scalar_t__ PFNGLREADPIXELSPROC ;
typedef scalar_t__ PFNGLREADBUFFERPROC ;
typedef scalar_t__ PFNGLPOLYGONMODEPROC ;
typedef scalar_t__ PFNGLPOINTSIZEPROC ;
typedef scalar_t__ PFNGLPIXELSTOREIPROC ;
typedef scalar_t__ PFNGLPIXELSTOREFPROC ;
typedef scalar_t__ PFNGLLOGICOPPROC ;
typedef scalar_t__ PFNGLLINEWIDTHPROC ;
typedef scalar_t__ PFNGLISENABLEDPROC ;
typedef scalar_t__ PFNGLHINTPROC ;
typedef scalar_t__ PFNGLGETTEXPARAMETERIVPROC ;
typedef scalar_t__ PFNGLGETTEXPARAMETERFVPROC ;
typedef scalar_t__ PFNGLGETTEXLEVELPARAMETERIVPROC ;
typedef scalar_t__ PFNGLGETTEXLEVELPARAMETERFVPROC ;
typedef scalar_t__ PFNGLGETTEXIMAGEPROC ;
typedef scalar_t__ PFNGLGETSTRINGPROC ;
typedef scalar_t__ PFNGLGETINTEGERVPROC ;
typedef scalar_t__ PFNGLGETFLOATVPROC ;
typedef scalar_t__ PFNGLGETERRORPROC ;
typedef scalar_t__ PFNGLGETDOUBLEVPROC ;
typedef scalar_t__ PFNGLGETBOOLEANVPROC ;
typedef scalar_t__ PFNGLFRONTFACEPROC ;
typedef scalar_t__ PFNGLFLUSHPROC ;
typedef scalar_t__ PFNGLFINISHPROC ;
typedef scalar_t__ PFNGLENABLEPROC ;
typedef scalar_t__ PFNGLDRAWBUFFERPROC ;
typedef scalar_t__ PFNGLDISABLEPROC ;
typedef scalar_t__ PFNGLDEPTHRANGEPROC ;
typedef scalar_t__ PFNGLDEPTHMASKPROC ;
typedef scalar_t__ PFNGLDEPTHFUNCPROC ;
typedef scalar_t__ PFNGLCULLFACEPROC ;
typedef scalar_t__ PFNGLCOLORMASKPROC ;
typedef scalar_t__ PFNGLCLEARSTENCILPROC ;
typedef scalar_t__ PFNGLCLEARPROC ;
typedef scalar_t__ PFNGLCLEARDEPTHPROC ;
typedef scalar_t__ PFNGLCLEARCOLORPROC ;
typedef scalar_t__ PFNGLBLENDFUNCPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_VERSION_1_0 ;
 scalar_t__ glad_glBlendFunc ;
 scalar_t__ glad_glClear ;
 scalar_t__ glad_glClearColor ;
 scalar_t__ glad_glClearDepth ;
 scalar_t__ glad_glClearStencil ;
 scalar_t__ glad_glColorMask ;
 scalar_t__ glad_glCullFace ;
 scalar_t__ glad_glDepthFunc ;
 scalar_t__ glad_glDepthMask ;
 scalar_t__ glad_glDepthRange ;
 scalar_t__ glad_glDisable ;
 scalar_t__ glad_glDrawBuffer ;
 scalar_t__ glad_glEnable ;
 scalar_t__ glad_glFinish ;
 scalar_t__ glad_glFlush ;
 scalar_t__ glad_glFrontFace ;
 scalar_t__ glad_glGetBooleanv ;
 scalar_t__ glad_glGetDoublev ;
 scalar_t__ glad_glGetError ;
 scalar_t__ glad_glGetFloatv ;
 scalar_t__ glad_glGetIntegerv ;
 scalar_t__ glad_glGetString ;
 scalar_t__ glad_glGetTexImage ;
 scalar_t__ glad_glGetTexLevelParameterfv ;
 scalar_t__ glad_glGetTexLevelParameteriv ;
 scalar_t__ glad_glGetTexParameterfv ;
 scalar_t__ glad_glGetTexParameteriv ;
 scalar_t__ glad_glHint ;
 scalar_t__ glad_glIsEnabled ;
 scalar_t__ glad_glLineWidth ;
 scalar_t__ glad_glLogicOp ;
 scalar_t__ glad_glPixelStoref ;
 scalar_t__ glad_glPixelStorei ;
 scalar_t__ glad_glPointSize ;
 scalar_t__ glad_glPolygonMode ;
 scalar_t__ glad_glReadBuffer ;
 scalar_t__ glad_glReadPixels ;
 scalar_t__ glad_glScissor ;
 scalar_t__ glad_glStencilFunc ;
 scalar_t__ glad_glStencilMask ;
 scalar_t__ glad_glStencilOp ;
 scalar_t__ glad_glTexImage1D ;
 scalar_t__ glad_glTexImage2D ;
 scalar_t__ glad_glTexParameterf ;
 scalar_t__ glad_glTexParameterfv ;
 scalar_t__ glad_glTexParameteri ;
 scalar_t__ glad_glTexParameteriv ;
 scalar_t__ glad_glViewport ;

__attribute__((used)) static void load_GL_VERSION_1_0(GLADloadproc load) {
 if(!GLAD_GL_VERSION_1_0) return;
 glad_glCullFace = (PFNGLCULLFACEPROC)load("glCullFace");
 glad_glFrontFace = (PFNGLFRONTFACEPROC)load("glFrontFace");
 glad_glHint = (PFNGLHINTPROC)load("glHint");
 glad_glLineWidth = (PFNGLLINEWIDTHPROC)load("glLineWidth");
 glad_glPointSize = (PFNGLPOINTSIZEPROC)load("glPointSize");
 glad_glPolygonMode = (PFNGLPOLYGONMODEPROC)load("glPolygonMode");
 glad_glScissor = (PFNGLSCISSORPROC)load("glScissor");
 glad_glTexParameterf = (PFNGLTEXPARAMETERFPROC)load("glTexParameterf");
 glad_glTexParameterfv = (PFNGLTEXPARAMETERFVPROC)load("glTexParameterfv");
 glad_glTexParameteri = (PFNGLTEXPARAMETERIPROC)load("glTexParameteri");
 glad_glTexParameteriv = (PFNGLTEXPARAMETERIVPROC)load("glTexParameteriv");
 glad_glTexImage1D = (PFNGLTEXIMAGE1DPROC)load("glTexImage1D");
 glad_glTexImage2D = (PFNGLTEXIMAGE2DPROC)load("glTexImage2D");
 glad_glDrawBuffer = (PFNGLDRAWBUFFERPROC)load("glDrawBuffer");
 glad_glClear = (PFNGLCLEARPROC)load("glClear");
 glad_glClearColor = (PFNGLCLEARCOLORPROC)load("glClearColor");
 glad_glClearStencil = (PFNGLCLEARSTENCILPROC)load("glClearStencil");
 glad_glClearDepth = (PFNGLCLEARDEPTHPROC)load("glClearDepth");
 glad_glStencilMask = (PFNGLSTENCILMASKPROC)load("glStencilMask");
 glad_glColorMask = (PFNGLCOLORMASKPROC)load("glColorMask");
 glad_glDepthMask = (PFNGLDEPTHMASKPROC)load("glDepthMask");
 glad_glDisable = (PFNGLDISABLEPROC)load("glDisable");
 glad_glEnable = (PFNGLENABLEPROC)load("glEnable");
 glad_glFinish = (PFNGLFINISHPROC)load("glFinish");
 glad_glFlush = (PFNGLFLUSHPROC)load("glFlush");
 glad_glBlendFunc = (PFNGLBLENDFUNCPROC)load("glBlendFunc");
 glad_glLogicOp = (PFNGLLOGICOPPROC)load("glLogicOp");
 glad_glStencilFunc = (PFNGLSTENCILFUNCPROC)load("glStencilFunc");
 glad_glStencilOp = (PFNGLSTENCILOPPROC)load("glStencilOp");
 glad_glDepthFunc = (PFNGLDEPTHFUNCPROC)load("glDepthFunc");
 glad_glPixelStoref = (PFNGLPIXELSTOREFPROC)load("glPixelStoref");
 glad_glPixelStorei = (PFNGLPIXELSTOREIPROC)load("glPixelStorei");
 glad_glReadBuffer = (PFNGLREADBUFFERPROC)load("glReadBuffer");
 glad_glReadPixels = (PFNGLREADPIXELSPROC)load("glReadPixels");
 glad_glGetBooleanv = (PFNGLGETBOOLEANVPROC)load("glGetBooleanv");
 glad_glGetDoublev = (PFNGLGETDOUBLEVPROC)load("glGetDoublev");
 glad_glGetError = (PFNGLGETERRORPROC)load("glGetError");
 glad_glGetFloatv = (PFNGLGETFLOATVPROC)load("glGetFloatv");
 glad_glGetIntegerv = (PFNGLGETINTEGERVPROC)load("glGetIntegerv");
 glad_glGetString = (PFNGLGETSTRINGPROC)load("glGetString");
 glad_glGetTexImage = (PFNGLGETTEXIMAGEPROC)load("glGetTexImage");
 glad_glGetTexParameterfv = (PFNGLGETTEXPARAMETERFVPROC)load("glGetTexParameterfv");
 glad_glGetTexParameteriv = (PFNGLGETTEXPARAMETERIVPROC)load("glGetTexParameteriv");
 glad_glGetTexLevelParameterfv = (PFNGLGETTEXLEVELPARAMETERFVPROC)load("glGetTexLevelParameterfv");
 glad_glGetTexLevelParameteriv = (PFNGLGETTEXLEVELPARAMETERIVPROC)load("glGetTexLevelParameteriv");
 glad_glIsEnabled = (PFNGLISENABLEDPROC)load("glIsEnabled");
 glad_glDepthRange = (PFNGLDEPTHRANGEPROC)load("glDepthRange");
 glad_glViewport = (PFNGLVIEWPORTPROC)load("glViewport");
}
