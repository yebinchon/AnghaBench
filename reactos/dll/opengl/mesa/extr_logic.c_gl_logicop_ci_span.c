
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int LogicOp; } ;
struct TYPE_7__ {int (* ReadIndexSpan ) (TYPE_3__*,size_t,int ,int ,size_t*) ;} ;
struct TYPE_9__ {TYPE_2__ Color; TYPE_1__ Driver; } ;
typedef size_t GLuint ;
typedef int GLubyte ;
typedef int GLint ;
typedef TYPE_3__ GLcontext ;
 int GL_INVALID_ENUM ;
 int MAX_WIDTH ;
 int gl_error (TYPE_3__*,int ,char*) ;
 int stub1 (TYPE_3__*,size_t,int ,int ,size_t*) ;

void gl_logicop_ci_span( GLcontext *ctx, GLuint n, GLint x, GLint y,
                         GLuint index[], GLubyte mask[] )
{
   GLuint dest[MAX_WIDTH];
   GLuint i;


   (*ctx->Driver.ReadIndexSpan)( ctx, n, x, y, dest );

   switch (ctx->Color.LogicOp) {
      case 140:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] = 0;
     }
  }
  break;
      case 129:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] = 1;
     }
  }
  break;
      case 139:

  break;
      case 138:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] = ~index[i];
     }
  }
  break;
      case 134:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] = dest[i];
     }
  }
  break;
      case 136:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] = ~dest[i];
     }
  }
  break;
      case 143:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] &= dest[i];
     }
  }
  break;
      case 135:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] = ~(index[i] & dest[i]);
     }
  }
  break;
      case 132:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] |= dest[i];
     }
  }
  break;
      case 133:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] = ~(index[i] | dest[i]);
     }
  }
  break;
      case 128:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] ^= dest[i];
     }
  }
  break;
      case 137:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] = ~(index[i] ^ dest[i]);
     }
  }
  break;
      case 141:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] = index[i] & ~dest[i];
     }
  }
  break;
      case 142:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] = ~index[i] & dest[i];
     }
  }
  break;
      case 130:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] = index[i] | ~dest[i];
     }
  }
  break;
      case 131:
         for (i=0;i<n;i++) {
     if (mask[i]) {
        index[i] = ~index[i] | dest[i];
     }
  }
  break;
      default:
  gl_error( ctx, GL_INVALID_ENUM, "gl_logic error" );
   }
}
