
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ buffer; } ;
typedef TYPE_1__ gs_zstencil_t ;


 int bfree (TYPE_1__*) ;
 int glDeleteRenderbuffers (int,scalar_t__*) ;
 int gl_success (char*) ;

void gs_zstencil_destroy(gs_zstencil_t *zs)
{
 if (zs) {
  if (zs->buffer) {
   glDeleteRenderbuffers(1, &zs->buffer);
   gl_success("glDeleteRenderbuffers");
  }

  bfree(zs);
 }
}
