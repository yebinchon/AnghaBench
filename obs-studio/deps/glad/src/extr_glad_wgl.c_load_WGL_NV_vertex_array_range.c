
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLFREEMEMORYNVPROC ;
typedef scalar_t__ PFNWGLALLOCATEMEMORYNVPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_WGL_NV_vertex_array_range ;
 scalar_t__ glad_wglAllocateMemoryNV ;
 scalar_t__ glad_wglFreeMemoryNV ;

__attribute__((used)) static void load_WGL_NV_vertex_array_range(GLADloadproc load) {
 if(!GLAD_WGL_NV_vertex_array_range) return;
 glad_wglAllocateMemoryNV = (PFNWGLALLOCATEMEMORYNVPROC)load("wglAllocateMemoryNV");
 glad_wglFreeMemoryNV = (PFNWGLFREEMEMORYNVPROC)load("wglFreeMemoryNV");
}
