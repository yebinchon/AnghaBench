
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXBUFFEREXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_texture_buffer_object ;
 scalar_t__ glad_glTexBufferEXT ;

__attribute__((used)) static void load_GL_EXT_texture_buffer_object(GLADloadproc load) {
 if(!GLAD_GL_EXT_texture_buffer_object) return;
 glad_glTexBufferEXT = (PFNGLTEXBUFFEREXTPROC)load("glTexBufferEXT");
}
