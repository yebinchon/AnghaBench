
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLDRAWMESHARRAYSSUNPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_SUN_mesh_array ;
 scalar_t__ glad_glDrawMeshArraysSUN ;

__attribute__((used)) static void load_GL_SUN_mesh_array(GLADloadproc load) {
 if(!GLAD_GL_SUN_mesh_array) return;
 glad_glDrawMeshArraysSUN = (PFNGLDRAWMESHARRAYSSUNPROC)load("glDrawMeshArraysSUN");
}
