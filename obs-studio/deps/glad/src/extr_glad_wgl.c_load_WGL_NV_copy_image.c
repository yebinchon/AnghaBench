
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLCOPYIMAGESUBDATANVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_NV_copy_image ;
 scalar_t__ glad_wglCopyImageSubDataNV ;

__attribute__((used)) static void load_WGL_NV_copy_image(GLADloadproc load) {
 if(!GLAD_WGL_NV_copy_image) return;
 glad_wglCopyImageSubDataNV = (PFNWGLCOPYIMAGESUBDATANVPROC)load("wglCopyImageSubDataNV");
}
