
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ZoomX; int ZoomY; } ;
struct TYPE_8__ {TYPE_2__ Pixel; TYPE_1__* Buffer; } ;
struct TYPE_6__ {int Height; int Width; } ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLdepth ;
typedef TYPE_3__ GLcontext ;


 scalar_t__ ABSF (int) ;
 int GL_BITMAP ;
 int MAX_WIDTH ;
 int MIN2 (int ,int) ;
 int assert (int) ;
 int gl_write_color_span (TYPE_3__*,int,int,int,int *,int *,int *,int *,int *,int ) ;

void
gl_write_zoomed_color_span( GLcontext *ctx,
                            GLuint n, GLint x, GLint y, const GLdepth z[],
                            const GLubyte red[], const GLubyte green[],
                            const GLubyte blue[], const GLubyte alpha[],
                            GLint y0 )
{
   GLint m;
   GLint r0, r1, row, r;
   GLint i, j, skipcol;
   GLubyte zred[MAX_WIDTH], zgreen[MAX_WIDTH];
   GLubyte zblue[MAX_WIDTH], zalpha[MAX_WIDTH];
   GLdepth zdepth[MAX_WIDTH];
   GLint maxwidth = MIN2( ctx->Buffer->Width, MAX_WIDTH );


   m = (GLint) ABSF( n * ctx->Pixel.ZoomX );
   if (m==0) {
      return;
   }
   if (ctx->Pixel.ZoomX<0.0) {

      x = x - m;
   }


   row = y-y0;
   r0 = y0 + (GLint) (row * ctx->Pixel.ZoomY);
   r1 = y0 + (GLint) ((row+1) * ctx->Pixel.ZoomY);
   if (r0==r1) {
      return;
   }
   else if (r1<r0) {
      GLint rtmp = r1;
      r1 = r0;
      r0 = rtmp;
   }


   if (r0<0 && r1<0) {

      return;
   }
   if (r0>=ctx->Buffer->Height && r1>=ctx->Buffer->Height) {

      return;
   }


   skipcol = 0;
   if (x<0) {
      skipcol = -x;
      m += x;
   }

   if (m>maxwidth) {
      m = maxwidth;
   }
   else if (m<=0) {
      return;
   }

   assert( m <= MAX_WIDTH );


   if (ctx->Pixel.ZoomX==-1.0F) {

      for (j=0;j<m;j++) {
         i = n - (j+skipcol) - 1;
         zred[j] = red[i];
         zgreen[j] = green[i];
         zblue[j] = blue[i];
         zalpha[j] = alpha[i];
         zdepth[j] = z[i];
      }
   }
   else {
      GLfloat xscale = 1.0F / ctx->Pixel.ZoomX;
      for (j=0;j<m;j++) {
         i = (j+skipcol) * xscale;
         if (i<0) i = n + i - 1;
         zred[j] = red[i];
         zgreen[j] = green[i];
         zblue[j] = blue[i];
         zalpha[j] = alpha[i];
         zdepth[j] = z[i];
      }
   }


   for (r=r0; r<r1; r++) {
      gl_write_color_span( ctx, m, x+skipcol, r, zdepth,
                           zred, zgreen, zblue, zalpha, GL_BITMAP );
   }
}
