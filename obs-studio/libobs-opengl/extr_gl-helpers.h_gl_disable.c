
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;


 int glDisable (int ) ;
 int gl_success (char*) ;

__attribute__((used)) static inline bool gl_disable(GLenum capability)
{
 glDisable(capability);
 return gl_success("glDisable");
}
