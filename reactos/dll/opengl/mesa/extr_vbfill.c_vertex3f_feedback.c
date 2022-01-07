
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLfloat ;
typedef int GLcontext ;


 int vertex4f_feedback (int *,int ,int ,int ,float) ;

__attribute__((used)) static void vertex3f_feedback( GLcontext *ctx, GLfloat x, GLfloat y, GLfloat z )
{
   vertex4f_feedback(ctx, x, y, z, 1.0F);
}
