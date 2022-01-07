
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__context ;


 int stbi__get16le (int *) ;
 int stbi__get32le (int *) ;
 char stbi__get8 (int *) ;
 int stbi__rewind (int *) ;
 int stbi__skip (int *,int) ;

__attribute__((used)) static int stbi__bmp_info(stbi__context *s, int *x, int *y, int *comp)
{
   int hsz;
   if (stbi__get8(s) != 'B' || stbi__get8(s) != 'M') {
       stbi__rewind( s );
       return 0;
   }
   stbi__skip(s,12);
   hsz = stbi__get32le(s);
   if (hsz != 12 && hsz != 40 && hsz != 56 && hsz != 108 && hsz != 124) {
       stbi__rewind( s );
       return 0;
   }
   if (hsz == 12) {
      *x = stbi__get16le(s);
      *y = stbi__get16le(s);
   } else {
      *x = stbi__get32le(s);
      *y = stbi__get32le(s);
   }
   if (stbi__get16le(s) != 1) {
       stbi__rewind( s );
       return 0;
   }
   *comp = stbi__get16le(s) / 8;
   return 1;
}
