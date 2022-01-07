
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
 int* STENCIL_ADDRESS (size_t const,size_t const) ;
 int gl_problem (TYPE_2__*,char*) ;

__attribute__((used)) static void apply_stencil_op_to_pixels( GLcontext *ctx,
                                        GLuint n, const GLint x[],
            const GLint y[],
            GLenum oper, GLubyte mask[] )
{
   GLint i;
   GLstencil ref;
   GLstencil wrtmask, invmask;

   wrtmask = ctx->Stencil.WriteMask;
   invmask = ~ctx->Stencil.WriteMask;

   ref = ctx->Stencil.Ref;

   switch (oper) {
      case 130:

         break;
      case 128:
  if (invmask==0) {
     for (i=0;i<n;i++) {
        if (mask[i]) {
                  GLstencil *sptr = STENCIL_ADDRESS( x[i], y[i] );
                  *sptr = 0;
        }
     }
  }
  else {
     for (i=0;i<n;i++) {
        if (mask[i]) {
                  GLstencil *sptr = STENCIL_ADDRESS( x[i], y[i] );
    *sptr = invmask & *sptr;
        }
     }
  }
  break;
      case 129:
  if (invmask==0) {
     for (i=0;i<n;i++) {
        if (mask[i]) {
                  GLstencil *sptr = STENCIL_ADDRESS( x[i], y[i] );
                  *sptr = ref;
        }
     }
  }
  else {
     for (i=0;i<n;i++) {
        if (mask[i]) {
                  GLstencil *sptr = STENCIL_ADDRESS( x[i], y[i] );
    *sptr = (invmask & *sptr ) | (wrtmask & ref);
        }
     }
  }
  break;
      case 132:
  if (invmask==0) {
     for (i=0;i<n;i++) {
        if (mask[i]) {
                  GLstencil *sptr = STENCIL_ADDRESS( x[i], y[i] );
    if (*sptr < 0xff) {
       *sptr = *sptr + 1;
    }
        }
     }
  }
  else {
     for (i=0;i<n;i++) {
        if (mask[i]) {
                  GLstencil *sptr = STENCIL_ADDRESS( x[i], y[i] );
    if (*sptr<0xff) {
       *sptr = (invmask & *sptr) | (wrtmask & (*sptr+1));
    }
        }
     }
  }
  break;
      case 133:
  if (invmask==0) {
     for (i=0;i<n;i++) {
        if (mask[i]) {
                  GLstencil *sptr = STENCIL_ADDRESS( x[i], y[i] );
    if (*sptr>0) {
       *sptr = *sptr - 1;
    }
        }
     }
  }
  else {
     for (i=0;i<n;i++) {
        if (mask[i]) {
                  GLstencil *sptr = STENCIL_ADDRESS( x[i], y[i] );
    if (*sptr>0) {
       *sptr = (invmask & *sptr) | (wrtmask & (*sptr-1));
    }
        }
     }
  }
  break;
      case 131:
  if (invmask==0) {
     for (i=0;i<n;i++) {
        if (mask[i]) {
                  GLstencil *sptr = STENCIL_ADDRESS( x[i], y[i] );
                  *sptr = ~*sptr;
        }
     }
  }
  else {
     for (i=0;i<n;i++) {
        if (mask[i]) {
                  GLstencil *sptr = STENCIL_ADDRESS( x[i], y[i] );
                  *sptr = (invmask & *sptr) | (wrtmask & ~*sptr);
        }
     }
  }
  break;
      default:
         gl_problem(ctx, "Bad stencilop in apply_stencil_op_to_pixels");
   }
}
