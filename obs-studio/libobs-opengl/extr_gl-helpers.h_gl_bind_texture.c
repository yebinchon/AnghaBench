
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLenum ;


 int glBindTexture (int ,int ) ;
 int gl_success (char*) ;

__attribute__((used)) static inline bool gl_bind_texture(GLenum target, GLuint texture)
{
 glBindTexture(target, texture);
 return gl_success("glBindTexture");
}
