
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBUFFERSTORAGEPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_buffer_storage ;
 scalar_t__ glad_glBufferStorage ;

__attribute__((used)) static void load_GL_ARB_buffer_storage(GLADloadproc load) {
 if(!GLAD_GL_ARB_buffer_storage) return;
 glad_glBufferStorage = (PFNGLBUFFERSTORAGEPROC)load("glBufferStorage");
}
