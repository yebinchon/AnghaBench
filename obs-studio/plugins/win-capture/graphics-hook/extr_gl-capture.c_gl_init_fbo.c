
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fbo; } ;


 TYPE_1__ data ;
 int glGenFramebuffers (int,int *) ;
 int gl_error (char*,char*) ;

__attribute__((used)) static inline bool gl_init_fbo(void)
{
 glGenFramebuffers(1, &data.fbo);
 return !gl_error("gl_init_fbo", "failed to initialize FBO");
}
