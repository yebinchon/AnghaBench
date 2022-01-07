
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_texture_object {size_t* Palette; int PaletteFormat; } ;
typedef size_t GLubyte ;
typedef int GLint ;
 int gl_problem (int *,char*) ;

__attribute__((used)) static void palette_sample(const struct gl_texture_object *tObj,
                           GLubyte index, GLubyte *red, GLubyte *green,
                           GLubyte *blue, GLubyte *alpha)
{
   GLint i = index;
   const GLubyte *palette;

   palette = tObj->Palette;

   switch (tObj->PaletteFormat) {
      case 133:
         *alpha = tObj->Palette[index];
         return;
      case 131:
      case 132:
         *red = palette[index];
         return;
      case 130:
         *red = palette[(index << 1) + 0];
         *alpha = palette[(index << 1) + 1];
         return;
      case 129:
         *red = palette[index * 3 + 0];
         *green = palette[index * 3 + 1];
         *blue = palette[index * 3 + 2];
         return;
      case 128:
         *red = palette[(i << 2) + 0];
         *green = palette[(i << 2) + 1];
         *blue = palette[(i << 2) + 2];
         *alpha = palette[(i << 2) + 3];
         return;
      default:
         gl_problem(((void*)0), "Bad palette format in palette_sample");
   }
}
