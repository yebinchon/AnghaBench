
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLCOPYIMAGESUBDATAPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_copy_image ;
 scalar_t__ glad_glCopyImageSubData ;

__attribute__((used)) static void load_GL_ARB_copy_image(GLADloadproc load) {
 if(!GLAD_GL_ARB_copy_image) return;
 glad_glCopyImageSubData = (PFNGLCOPYIMAGESUBDATAPROC)load("glCopyImageSubData");
}
