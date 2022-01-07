
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLsizei ;


 int glGenTextures (int ,int *) ;
 int gl_success (char*) ;

__attribute__((used)) static inline bool gl_gen_textures(GLsizei num_texture, GLuint *textures)
{
 glGenTextures(num_texture, textures);
 return gl_success("glGenTextures");
}
