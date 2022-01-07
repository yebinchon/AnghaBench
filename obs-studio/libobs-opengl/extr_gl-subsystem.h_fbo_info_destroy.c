
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbo_info {int fbo; } ;


 int bfree (struct fbo_info*) ;
 int glDeleteFramebuffers (int,int *) ;
 int gl_success (char*) ;

__attribute__((used)) static inline void fbo_info_destroy(struct fbo_info *fbo)
{
 if (fbo) {
  glDeleteFramebuffers(1, &fbo->fbo);
  gl_success("glDeleteFramebuffers");

  bfree(fbo);
 }
}
