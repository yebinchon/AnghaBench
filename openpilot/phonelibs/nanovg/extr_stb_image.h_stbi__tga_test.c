
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__context ;


 int stbi__get16le (int *) ;
 int stbi__get8 (int *) ;
 int stbi__rewind (int *) ;
 int stbi__skip (int *,int) ;

__attribute__((used)) static int stbi__tga_test(stbi__context *s)
{
   int res = 0;
   int sz, tga_color_type;
   stbi__get8(s);
   tga_color_type = stbi__get8(s);
   if ( tga_color_type > 1 ) goto errorEnd;
   sz = stbi__get8(s);
   if ( tga_color_type == 1 ) {
      if (sz != 1 && sz != 9) goto errorEnd;
      stbi__skip(s,4);
      sz = stbi__get8(s);
      if ( (sz != 8) && (sz != 15) && (sz != 16) && (sz != 24) && (sz != 32) ) goto errorEnd;
      stbi__skip(s,4);
   } else {
      if ( (sz != 2) && (sz != 3) && (sz != 10) && (sz != 11) ) goto errorEnd;
      stbi__skip(s,9);
   }
   if ( stbi__get16le(s) < 1 ) goto errorEnd;
   if ( stbi__get16le(s) < 1 ) goto errorEnd;
   sz = stbi__get8(s);
   if ( (tga_color_type == 1) && (sz != 8) && (sz != 16) ) goto errorEnd;
   if ( (sz != 8) && (sz != 15) && (sz != 16) && (sz != 24) && (sz != 32) ) goto errorEnd;

   res = 1;

errorEnd:
   stbi__rewind(s);
   return res;
}
