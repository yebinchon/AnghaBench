
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_texture_object {int dummy; } ;
struct gl_texture_image {scalar_t__ Width; scalar_t__ Height; int Format; int * Data; } ;
typedef int GLubyte ;
typedef scalar_t__ GLint ;
 int abort () ;
 int gl_problem (int *,char*) ;
 int palette_sample (struct gl_texture_object const*,int ,int *,int *,int *,int *) ;

__attribute__((used)) static void get_2d_texel( const struct gl_texture_object *tObj,
                          const struct gl_texture_image *img, GLint i, GLint j,
                          GLubyte *red, GLubyte *green, GLubyte *blue,
                          GLubyte *alpha )
{
   GLint width = img->Width;
   GLubyte *texel;







   switch (img->Format) {
      case 133:
         {
            GLubyte index = img->Data[ width *j + i ];
            palette_sample(tObj, index, red, green, blue, alpha);
            return;
         }
      case 134:
         *alpha = img->Data[ width * j + i ];
         return;
      case 131:
      case 132:
         *red = img->Data[ width * j + i ];
         return;
      case 130:
         texel = img->Data + (width * j + i) * 2;
         *red = texel[0];
         *alpha = texel[1];
         return;
      case 129:
         texel = img->Data + (width * j + i) * 3;
         *red = texel[0];
         *green = texel[1];
         *blue = texel[2];
         return;
      case 128:
         texel = img->Data + (width * j + i) * 4;
         *red = texel[0];
         *green = texel[1];
         *blue = texel[2];
         *alpha = texel[3];
         return;
      default:
         gl_problem(((void*)0), "Bad format in get_2d_texel");
   }
}
