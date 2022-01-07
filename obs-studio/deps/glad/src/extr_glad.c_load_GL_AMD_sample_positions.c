
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSETMULTISAMPLEFVAMDPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_AMD_sample_positions ;
 scalar_t__ glad_glSetMultisamplefvAMD ;

__attribute__((used)) static void load_GL_AMD_sample_positions(GLADloadproc load) {
 if(!GLAD_GL_AMD_sample_positions) return;
 glad_glSetMultisamplefvAMD = (PFNGLSETMULTISAMPLEFVAMDPROC)load("glSetMultisamplefvAMD");
}
