
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDEPTHBOUNDSEXTPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_EXT_depth_bounds_test ;
 scalar_t__ glad_glDepthBoundsEXT ;

__attribute__((used)) static void load_GL_EXT_depth_bounds_test(GLADloadproc load) {
 if(!GLAD_GL_EXT_depth_bounds_test) return;
 glad_glDepthBoundsEXT = (PFNGLDEPTHBOUNDSEXTPROC)load("glDepthBoundsEXT");
}
