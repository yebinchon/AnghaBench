
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLCLEARTEXSUBIMAGEPROC ;
typedef scalar_t__ PFNGLCLEARTEXIMAGEPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_clear_texture ;
 scalar_t__ glad_glClearTexImage ;
 scalar_t__ glad_glClearTexSubImage ;

__attribute__((used)) static void load_GL_ARB_clear_texture(GLADloadproc load) {
 if(!GLAD_GL_ARB_clear_texture) return;
 glad_glClearTexImage = (PFNGLCLEARTEXIMAGEPROC)load("glClearTexImage");
 glad_glClearTexSubImage = (PFNGLCLEARTEXSUBIMAGEPROC)load("glClearTexSubImage");
}
