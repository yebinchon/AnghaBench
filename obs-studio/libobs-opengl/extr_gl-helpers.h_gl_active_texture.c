
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;


 int glActiveTexture (int ) ;
 int gl_success (char*) ;

__attribute__((used)) static inline bool gl_active_texture(GLenum texture_id)
{
 glActiveTexture(texture_id);
 return gl_success("glActiveTexture");
}
