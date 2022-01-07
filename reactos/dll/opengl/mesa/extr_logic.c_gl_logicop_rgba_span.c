
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int LogicOp; } ;
struct TYPE_9__ {TYPE_2__* Visual; TYPE_1__ Color; } ;
struct TYPE_8__ {int AlphaScale; int BlueScale; int GreenScale; int RedScale; } ;
typedef size_t GLuint ;
typedef int GLubyte ;
typedef int GLint ;
typedef TYPE_3__ GLcontext ;
 int MAX_WIDTH ;
 int gl_problem (TYPE_3__*,char*) ;
 int gl_read_color_span (TYPE_3__*,size_t,int,int,int*,int*,int*,int*) ;

void gl_logicop_rgba_span( GLcontext *ctx,
                           GLuint n, GLint x, GLint y,
                           GLubyte red[], GLubyte green[],
                           GLubyte blue[], GLubyte alpha[],
                           GLubyte mask[] )
{
   GLubyte rdest[MAX_WIDTH], gdest[MAX_WIDTH];
   GLubyte bdest[MAX_WIDTH], adest[MAX_WIDTH];
   GLuint i;


   gl_read_color_span( ctx, n, x, y, rdest, gdest, bdest, adest );


   switch (ctx->Color.LogicOp) {
      case 140:
         for (i=0;i<n;i++) {
            if (mask[i]) {
               red[i] = green[i] = blue[i] = alpha[i] = 0;
            }
         }
         break;
      case 129:
         {
            GLubyte r = (GLint) ctx->Visual->RedScale;
            GLubyte g = (GLint) ctx->Visual->GreenScale;
            GLubyte b = (GLint) ctx->Visual->BlueScale;
            GLubyte a = (GLint) ctx->Visual->AlphaScale;
            for (i=0;i<n;i++) {
               if (mask[i]) {
                  red[i] = r;
                  green[i] = g;
                  blue[i] = b;
                  alpha[i] = a;
               }
            }
         }
         break;
      case 139:

         break;
      case 138:
         for (i=0;i<n;i++) {
            if (mask[i]) {
               red[i] = ~red[i];
               green[i] = ~green[i];
               blue[i] = ~blue[i];
               alpha[i] = ~alpha[i];
            }
         }
         break;
      case 134:
         for (i=0;i<n;i++) {
            if (mask[i]) {
               red[i] = rdest[i];
               green[i] = gdest[i];
               blue[i] = bdest[i];
               alpha[i] = adest[i];
            }
         }
         break;
      case 136:
         for (i=0;i<n;i++) {
            if (mask[i]) {
               red[i] = ~rdest[i];
               green[i] = ~gdest[i];
               blue[i] = ~bdest[i];
               alpha[i] = ~adest[i];
            }
         }
         break;
      case 143:
         for (i=0;i<n;i++) {
            if (mask[i]) {
               red[i] &= rdest[i];
               green[i] &= gdest[i];
               blue[i] &= bdest[i];
               alpha[i] &= adest[i];
            }
         }
         break;
      case 135:
         for (i=0;i<n;i++) {
            if (mask[i]) {
               red[i] = ~(red[i] & rdest[i]);
               green[i] = ~(green[i] & gdest[i]);
               blue[i] = ~(blue[i] & bdest[i]);
               alpha[i] = ~(alpha[i] & adest[i]);
            }
         }
         break;
      case 132:
         for (i=0;i<n;i++) {
            if (mask[i]) {
               red[i] |= rdest[i];
               green[i] |= gdest[i];
               blue[i] |= bdest[i];
               alpha[i] |= adest[i];
            }
         }
         break;
      case 133:
         for (i=0;i<n;i++) {
            if (mask[i]) {
               red[i] = ~(red[i] | rdest[i]);
               green[i] = ~(green[i] | gdest[i]);
               blue[i] = ~(blue[i] | bdest[i]);
               alpha[i] = ~(alpha[i] | adest[i]);
            }
         }
         break;
      case 128:
         for (i=0;i<n;i++) {
            if (mask[i]) {
               red[i] ^= rdest[i];
               green[i] ^= gdest[i];
               blue[i] ^= bdest[i];
               alpha[i] ^= adest[i];
            }
         }
         break;
      case 137:
         for (i=0;i<n;i++) {
            if (mask[i]) {
               red[i] = ~(red[i] ^ rdest[i]);
               green[i] = ~(green[i] ^ gdest[i]);
               blue[i] = ~(blue[i] ^ bdest[i]);
               alpha[i] = ~(alpha[i] ^ adest[i]);
            }
         }
         break;
      case 141:
         for (i=0;i<n;i++) {
            if (mask[i]) {
               red[i] = red[i] & ~rdest[i];
               green[i] = green[i] & ~gdest[i];
               blue[i] = blue[i] & ~bdest[i];
               alpha[i] = alpha[i] & ~adest[i];
            }
         }
         break;
      case 142:
         for (i=0;i<n;i++) {
            if (mask[i]) {
               red[i] = ~red[i] & rdest[i];
               green[i] = ~green[i] & gdest[i];
               blue[i] = ~blue[i] & bdest[i];
               alpha[i] = ~alpha[i] & adest[i];
            }
         }
         break;
      case 130:
         for (i=0;i<n;i++) {
            if (mask[i]) {
               red[i] = red[i] | ~rdest[i];
               green[i] = green[i] | ~gdest[i];
               blue[i] = blue[i] | ~bdest[i];
               alpha[i] = alpha[i] | ~adest[i];
            }
         }
         break;
      case 131:
         for (i=0;i<n;i++) {
            if (mask[i]) {
               red[i] = ~red[i] | rdest[i];
               green[i] = ~green[i] | gdest[i];
               blue[i] = ~blue[i] | bdest[i];
               alpha[i] = ~alpha[i] | adest[i];
            }
         }
         break;
      default:

         gl_problem(ctx, "Bad function in gl_logicop_rgba_span");
         return;
   }
}
