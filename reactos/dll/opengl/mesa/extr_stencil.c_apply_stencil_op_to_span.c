
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int WriteMask; int Ref; } ;
struct TYPE_6__ {TYPE_1__ Stencil; } ;
typedef size_t GLuint ;
typedef int GLubyte ;
typedef int GLstencil ;
typedef size_t GLint ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;
 int* STENCIL_ADDRESS (size_t,size_t) ;
 int gl_problem (TYPE_2__*,char*) ;

__attribute__((used)) static void apply_stencil_op_to_span( GLcontext *ctx,
                                      GLuint n, GLint x, GLint y,
          GLenum oper, GLubyte mask[] )
{
   GLint i;
   GLstencil s, ref;
   GLstencil wrtmask, invmask;
   GLstencil *stencil;

   wrtmask = ctx->Stencil.WriteMask;
   invmask = ~ctx->Stencil.WriteMask;
   ref = ctx->Stencil.Ref;
   stencil = STENCIL_ADDRESS( x, y );

   switch (oper) {
      case 130:

         break;
      case 128:
  if (invmask==0) {
     for (i=0;i<n;i++) {
        if (mask[i]) {
    stencil[i] = 0;
        }
     }
  }
  else {
     for (i=0;i<n;i++) {
        if (mask[i]) {
    stencil[i] = stencil[i] & invmask;
        }
     }
  }
  break;
      case 129:
  if (invmask==0) {
     for (i=0;i<n;i++) {
        if (mask[i]) {
                  stencil[i] = ref;
        }
     }
  }
  else {
     for (i=0;i<n;i++) {
        if (mask[i]) {
    s = stencil[i];
    stencil[i] = (invmask & s ) | (wrtmask & ref);
        }
     }
  }
  break;
      case 132:
  if (invmask==0) {
     for (i=0;i<n;i++) {
        if (mask[i]) {
    s = stencil[i];
    if (s<0xff) {
       stencil[i] = s+1;
    }
        }
     }
  }
  else {
     for (i=0;i<n;i++) {
        if (mask[i]) {

    s = stencil[i];
    if (s<0xff) {
       stencil[i] = (invmask & s) | (wrtmask & (s+1));
    }
        }
     }
  }
  break;
      case 133:
  if (invmask==0) {
     for (i=0;i<n;i++) {
        if (mask[i]) {
    s = stencil[i];
    if (s>0) {
       stencil[i] = s-1;
    }
        }
     }
  }
  else {
     for (i=0;i<n;i++) {
        if (mask[i]) {

    s = stencil[i];
    if (s>0) {
       stencil[i] = (invmask & s) | (wrtmask & (s-1));
    }
        }
     }
  }
  break;
      case 131:
  if (invmask==0) {
     for (i=0;i<n;i++) {
        if (mask[i]) {
    s = stencil[i];
    stencil[i] = ~s;
        }
     }
  }
  else {
     for (i=0;i<n;i++) {
        if (mask[i]) {
    s = stencil[i];
    stencil[i] = (invmask & s) | (wrtmask & ~s);
        }
     }
  }
  break;
      default:
         gl_problem(ctx, "Bad stencilop in apply_stencil_op_to_span");
   }
}
