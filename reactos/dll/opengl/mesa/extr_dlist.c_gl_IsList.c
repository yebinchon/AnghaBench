
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* Shared; } ;
struct TYPE_4__ {int DisplayList; } ;
typedef scalar_t__ GLuint ;
typedef TYPE_2__ GLcontext ;
typedef int GLboolean ;


 int GL_FALSE ;
 int GL_TRUE ;
 scalar_t__ HashLookup (int ,scalar_t__) ;

GLboolean gl_IsList( GLcontext *ctx, GLuint list )
{
   if (list > 0 && HashLookup(ctx->Shared->DisplayList, list)) {
      return GL_TRUE;
   }
   else {
      return GL_FALSE;
   }
}
