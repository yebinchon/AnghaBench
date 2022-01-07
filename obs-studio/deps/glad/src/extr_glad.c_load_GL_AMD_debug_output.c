
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETDEBUGMESSAGELOGAMDPROC ;
typedef scalar_t__ PFNGLDEBUGMESSAGEINSERTAMDPROC ;
typedef scalar_t__ PFNGLDEBUGMESSAGEENABLEAMDPROC ;
typedef scalar_t__ PFNGLDEBUGMESSAGECALLBACKAMDPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_AMD_debug_output ;
 scalar_t__ glad_glDebugMessageCallbackAMD ;
 scalar_t__ glad_glDebugMessageEnableAMD ;
 scalar_t__ glad_glDebugMessageInsertAMD ;
 scalar_t__ glad_glGetDebugMessageLogAMD ;

__attribute__((used)) static void load_GL_AMD_debug_output(GLADloadproc load) {
 if(!GLAD_GL_AMD_debug_output) return;
 glad_glDebugMessageEnableAMD = (PFNGLDEBUGMESSAGEENABLEAMDPROC)load("glDebugMessageEnableAMD");
 glad_glDebugMessageInsertAMD = (PFNGLDEBUGMESSAGEINSERTAMDPROC)load("glDebugMessageInsertAMD");
 glad_glDebugMessageCallbackAMD = (PFNGLDEBUGMESSAGECALLBACKAMDPROC)load("glDebugMessageCallbackAMD");
 glad_glGetDebugMessageLogAMD = (PFNGLGETDEBUGMESSAGELOGAMDPROC)load("glGetDebugMessageLogAMD");
}
