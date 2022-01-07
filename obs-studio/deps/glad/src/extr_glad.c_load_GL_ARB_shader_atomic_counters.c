
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_shader_atomic_counters ;
 scalar_t__ glad_glGetActiveAtomicCounterBufferiv ;

__attribute__((used)) static void load_GL_ARB_shader_atomic_counters(GLADloadproc load) {
 if(!GLAD_GL_ARB_shader_atomic_counters) return;
 glad_glGetActiveAtomicCounterBufferiv = (PFNGLGETACTIVEATOMICCOUNTERBUFFERIVPROC)load("glGetActiveAtomicCounterBufferiv");
}
