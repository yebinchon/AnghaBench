
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;


 int glCullFace (int ) ;
 int gl_success (char*) ;

__attribute__((used)) static inline bool gl_cull_face(GLenum faces)
{
 glCullFace(faces);
 return gl_success("glCullFace");
}
