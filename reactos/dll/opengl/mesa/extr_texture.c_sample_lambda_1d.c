
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_texture_object {scalar_t__ const MinMagThresh; int MinFilter; int MagFilter; int * Image; } ;
typedef size_t GLuint ;
typedef int GLubyte ;
typedef scalar_t__ GLfloat ;
 int gl_problem (int *,char*) ;
 int sample_1d_linear (struct gl_texture_object const*,int ,scalar_t__ const,int *,int *,int *,int *) ;
 int sample_1d_linear_mipmap_linear (struct gl_texture_object const*,scalar_t__ const,scalar_t__ const,int *,int *,int *,int *) ;
 int sample_1d_linear_mipmap_nearest (struct gl_texture_object const*,scalar_t__ const,scalar_t__ const,int *,int *,int *,int *) ;
 int sample_1d_nearest (struct gl_texture_object const*,int ,scalar_t__ const,int *,int *,int *,int *) ;
 int sample_1d_nearest_mipmap_linear (struct gl_texture_object const*,scalar_t__ const,scalar_t__ const,int *,int *,int *,int *) ;
 int sample_1d_nearest_mipmap_nearest (struct gl_texture_object const*,scalar_t__ const,scalar_t__ const,int *,int *,int *,int *) ;

__attribute__((used)) static void sample_lambda_1d( const struct gl_texture_object *tObj, GLuint n,
                              const GLfloat s[], const GLfloat t[],
                              const GLfloat u[], const GLfloat lambda[],
                              GLubyte red[], GLubyte green[], GLubyte blue[],
                              GLubyte alpha[] )
{
   GLuint i;

   for (i=0;i<n;i++) {
      if (lambda[i] > tObj->MinMagThresh) {

         switch (tObj->MinFilter) {
            case 130:
               sample_1d_nearest( tObj, tObj->Image[0], s[i],
                                  &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            case 133:
               sample_1d_linear( tObj, tObj->Image[0], s[i],
                                 &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            case 128:
               sample_1d_nearest_mipmap_nearest( tObj, lambda[i], s[i],
                                 &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            case 131:
               sample_1d_linear_mipmap_nearest( tObj, s[i], lambda[i],
                                 &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            case 129:
               sample_1d_nearest_mipmap_linear( tObj, s[i], lambda[i],
                                 &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            case 132:
               sample_1d_linear_mipmap_linear( tObj, s[i], lambda[i],
                                 &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            default:
               gl_problem(((void*)0), "Bad min filter in sample_1d_texture");
               return;
         }
      }
      else {

         switch (tObj->MagFilter) {
            case 130:
               sample_1d_nearest( tObj, tObj->Image[0], s[i],
                                  &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            case 133:
               sample_1d_linear( tObj, tObj->Image[0], s[i],
                                 &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            default:
               gl_problem(((void*)0), "Bad mag filter in sample_1d_texture");
               return;
         }
      }
   }
}
