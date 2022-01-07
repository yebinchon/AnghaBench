
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXBUFFERRANGEPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_texture_buffer_range ;
 scalar_t__ glad_glTexBufferRange ;

__attribute__((used)) static void load_GL_ARB_texture_buffer_range(GLADloadproc load) {
 if(!GLAD_GL_ARB_texture_buffer_range) return;
 glad_glTexBufferRange = (PFNGLTEXBUFFERRANGEPROC)load("glTexBufferRange");
}
