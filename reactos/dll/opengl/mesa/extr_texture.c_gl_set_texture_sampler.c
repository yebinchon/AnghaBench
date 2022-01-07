
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gl_texture_object {scalar_t__ MinFilter; scalar_t__ MagFilter; float MinMagThresh; int Dimensions; int * SampleFunc; TYPE_1__** Image; int WrapT; int WrapS; int Complete; } ;
struct TYPE_2__ {int Format; int Border; } ;
typedef int GLboolean ;


 int ASSERT (int) ;
 scalar_t__ GL_LINEAR ;
 scalar_t__ GL_LINEAR_MIPMAP_NEAREST ;
 scalar_t__ GL_NEAREST ;
 scalar_t__ GL_NEAREST_MIPMAP_NEAREST ;
 int GL_REPEAT ;
 int GL_RGB ;
 int GL_RGBA ;
 int gl_problem (int *,char*) ;
 int * opt_sample_rgb_2d ;
 int * opt_sample_rgba_2d ;
 int * sample_lambda_1d ;
 int * sample_lambda_2d ;
 int * sample_linear_1d ;
 int * sample_linear_2d ;
 int * sample_nearest_1d ;
 int * sample_nearest_2d ;

void gl_set_texture_sampler( struct gl_texture_object *t )
{
   if (!t->Complete) {
      t->SampleFunc = ((void*)0);
   }
   else {
      GLboolean needLambda = (t->MinFilter != t->MagFilter);

      if (needLambda) {

         if (t->MagFilter==GL_LINEAR
             && (t->MinFilter==GL_NEAREST_MIPMAP_NEAREST ||
                 t->MinFilter==GL_LINEAR_MIPMAP_NEAREST)) {
            t->MinMagThresh = 0.5F;
         }
         else {
            t->MinMagThresh = 0.0F;
         }
      }

      switch (t->Dimensions) {
         case 1:
            if (needLambda) {
               t->SampleFunc = sample_lambda_1d;
            }
            else if (t->MinFilter==GL_LINEAR) {
               t->SampleFunc = sample_linear_1d;
            }
            else {
               ASSERT(t->MinFilter==GL_NEAREST);
               t->SampleFunc = sample_nearest_1d;
            }
            break;
         case 2:
            if (needLambda) {
               t->SampleFunc = sample_lambda_2d;
            }
            else if (t->MinFilter==GL_LINEAR) {
               t->SampleFunc = sample_linear_2d;
            }
            else {
               ASSERT(t->MinFilter==GL_NEAREST);
               if (t->WrapS==GL_REPEAT && t->WrapT==GL_REPEAT
                   && t->Image[0]->Border==0 && t->Image[0]->Format==GL_RGB) {
                  t->SampleFunc = opt_sample_rgb_2d;
               }
               else if (t->WrapS==GL_REPEAT && t->WrapT==GL_REPEAT
                   && t->Image[0]->Border==0 && t->Image[0]->Format==GL_RGBA) {
                  t->SampleFunc = opt_sample_rgba_2d;
               }
               else
                  t->SampleFunc = sample_nearest_2d;
            }
            break;
         default:
            gl_problem(((void*)0), "invalid dimensions in gl_set_texture_sampler");
      }
   }
}
