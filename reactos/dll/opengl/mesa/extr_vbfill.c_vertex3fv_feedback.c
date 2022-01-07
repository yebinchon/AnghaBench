
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLfloat ;
typedef int GLcontext ;


 int vertex4f_feedback (int *,int const,int const,int const,float) ;

__attribute__((used)) static void vertex3fv_feedback( GLcontext *ctx, const GLfloat v[3] )
{
   vertex4f_feedback(ctx, v[0], v[1], v[2], 1.0F);
}
