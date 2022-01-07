
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_texture_object {int * Image; } ;
typedef size_t GLuint ;
typedef int GLubyte ;
typedef int GLfloat ;


 int sample_1d_nearest (struct gl_texture_object const*,int ,int const,int *,int *,int *,int *) ;

__attribute__((used)) static void sample_nearest_1d( const struct gl_texture_object *tObj, GLuint n,
                               const GLfloat s[], const GLfloat t[],
                               const GLfloat u[], const GLfloat lambda[],
                               GLubyte red[], GLubyte green[], GLubyte blue[],
                               GLubyte alpha[] )
{
   GLuint i;
   for (i=0;i<n;i++) {
      sample_1d_nearest( tObj, tObj->Image[0], s[i],
                         &red[i], &green[i], &blue[i], &alpha[i]);
   }
}
