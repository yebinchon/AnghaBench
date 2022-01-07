
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Function; int Ref; int ValueMask; int FailFunc; } ;
struct TYPE_7__ {TYPE_1__ Stencil; } ;
typedef size_t GLuint ;
typedef int GLubyte ;
typedef int GLstencil ;
typedef int GLint ;
typedef TYPE_2__ GLcontext ;
 int MAX_WIDTH ;
 int* STENCIL_ADDRESS (int,int) ;
 int apply_stencil_op_to_span (TYPE_2__*,size_t,int,int,int ,int*) ;
 int gl_problem (TYPE_2__*,char*) ;

GLint gl_stencil_span( GLcontext *ctx,
                       GLuint n, GLint x, GLint y, GLubyte mask[] )
{
   GLubyte fail[MAX_WIDTH];
   GLint allfail = 0;
   GLuint i;
   GLstencil r, s;
   GLstencil *stencil;

   stencil = STENCIL_ADDRESS( x, y );
   switch (ctx->Stencil.Function) {
      case 129:

         for (i=0;i<n;i++) {
     if (mask[i]) {
        mask[i] = 0;
        fail[i] = 1;
     }
     else {
        fail[i] = 0;
     }
  }
  allfail = 1;
  break;
      case 130:
  r = ctx->Stencil.Ref & ctx->Stencil.ValueMask;
  for (i=0;i<n;i++) {
     if (mask[i]) {
        s = stencil[i] & ctx->Stencil.ValueMask;
        if (r < s) {

    fail[i] = 0;
        }
        else {
    fail[i] = 1;
    mask[i] = 0;
        }
     }
     else {
        fail[i] = 0;
     }
  }
  break;
      case 131:
  r = ctx->Stencil.Ref & ctx->Stencil.ValueMask;
  for (i=0;i<n;i++) {
     if (mask[i]) {
        s = stencil[i] & ctx->Stencil.ValueMask;
        if (r <= s) {

    fail[i] = 0;
        }
        else {
    fail[i] = 1;
    mask[i] = 0;
        }
     }
     else {
        fail[i] = 0;
     }
  }
  break;
      case 132:
  r = ctx->Stencil.Ref & ctx->Stencil.ValueMask;
  for (i=0;i<n;i++) {
     if (mask[i]) {
        s = stencil[i] & ctx->Stencil.ValueMask;
        if (r > s) {

    fail[i] = 0;
        }
        else {
    fail[i] = 1;
    mask[i] = 0;
        }
     }
     else {
        fail[i] = 0;
     }
  }
  break;
      case 133:
  r = ctx->Stencil.Ref & ctx->Stencil.ValueMask;
  for (i=0;i<n;i++) {
     if (mask[i]) {
        s = stencil[i] & ctx->Stencil.ValueMask;
        if (r >= s) {

    fail[i] = 0;
        }
        else {
    fail[i] = 1;
    mask[i] = 0;
        }
     }
     else {
        fail[i] = 0;
     }
  }
  break;
      case 134:
  r = ctx->Stencil.Ref & ctx->Stencil.ValueMask;
  for (i=0;i<n;i++) {
     if (mask[i]) {
        s = stencil[i] & ctx->Stencil.ValueMask;
        if (r == s) {

    fail[i] = 0;
        }
        else {
    fail[i] = 1;
    mask[i] = 0;
        }
     }
     else {
        fail[i] = 0;
     }
  }
  break;
      case 128:
  r = ctx->Stencil.Ref & ctx->Stencil.ValueMask;
  for (i=0;i<n;i++) {
     if (mask[i]) {
        s = stencil[i] & ctx->Stencil.ValueMask;
        if (r != s) {

    fail[i] = 0;
        }
        else {
    fail[i] = 1;
    mask[i] = 0;
        }
     }
     else {
        fail[i] = 0;
     }
  }
  break;
      case 135:

  for (i=0;i<n;i++) {
     fail[i] = 0;
  }
  break;
      default:
         gl_problem(ctx, "Bad stencil func in gl_stencil_span");
         return 0;
   }

   apply_stencil_op_to_span( ctx, n, x, y, ctx->Stencil.FailFunc, fail );

   return (allfail) ? 0 : 1;
}
