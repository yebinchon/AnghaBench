
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSHADERSTORAGEBLOCKBINDINGPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_shader_storage_buffer_object ;
 scalar_t__ glad_glShaderStorageBlockBinding ;

__attribute__((used)) static void load_GL_ARB_shader_storage_buffer_object(GLADloadproc load) {
 if(!GLAD_GL_ARB_shader_storage_buffer_object) return;
 glad_glShaderStorageBlockBinding = (PFNGLSHADERSTORAGEBLOCKBINDINGPROC)load("glShaderStorageBlockBinding");
}
