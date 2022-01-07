
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETDEBUGMESSAGELOGARBPROC ;
typedef scalar_t__ PFNGLDEBUGMESSAGEINSERTARBPROC ;
typedef scalar_t__ PFNGLDEBUGMESSAGECONTROLARBPROC ;
typedef scalar_t__ PFNGLDEBUGMESSAGECALLBACKARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_debug_output ;
 scalar_t__ glad_glDebugMessageCallbackARB ;
 scalar_t__ glad_glDebugMessageControlARB ;
 scalar_t__ glad_glDebugMessageInsertARB ;
 scalar_t__ glad_glGetDebugMessageLogARB ;

__attribute__((used)) static void load_GL_ARB_debug_output(GLADloadproc load) {
 if(!GLAD_GL_ARB_debug_output) return;
 glad_glDebugMessageControlARB = (PFNGLDEBUGMESSAGECONTROLARBPROC)load("glDebugMessageControlARB");
 glad_glDebugMessageInsertARB = (PFNGLDEBUGMESSAGEINSERTARBPROC)load("glDebugMessageInsertARB");
 glad_glDebugMessageCallbackARB = (PFNGLDEBUGMESSAGECALLBACKARBPROC)load("glDebugMessageCallbackARB");
 glad_glGetDebugMessageLogARB = (PFNGLGETDEBUGMESSAGELOGARBPROC)load("glGetDebugMessageLogARB");
}
