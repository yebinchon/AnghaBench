
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLubyte ;
typedef int GLint ;
typedef int GLcontext ;


 int MAX_WIDTH ;
 int do_blend (int *,int ,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int gl_read_color_span (int *,int ,int ,int ,int *,int *,int *,int *) ;

void gl_blend_span( GLcontext* ctx, GLuint n, GLint x, GLint y,
      GLubyte red[], GLubyte green[],
      GLubyte blue[], GLubyte alpha[],
      GLubyte mask[] )
{
   GLubyte rdest[MAX_WIDTH], gdest[MAX_WIDTH];
   GLubyte bdest[MAX_WIDTH], adest[MAX_WIDTH];


   gl_read_color_span( ctx, n, x, y, rdest, gdest, bdest, adest );

   do_blend( ctx, n, mask, red, green, blue, alpha, rdest, gdest, bdest, adest );
}
