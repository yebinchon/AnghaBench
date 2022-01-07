
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__context ;


 int stbi__err (char*,char*) ;
 scalar_t__ stbi__get8 (int *) ;
 int stbi__pnm_getinteger (int *,char*) ;
 int stbi__pnm_skip_whitespace (int *,char*) ;
 int stbi__rewind (int *) ;

__attribute__((used)) static int stbi__pnm_info(stbi__context *s, int *x, int *y, int *comp)
{
   int maxv;
   char c, p, t;

   stbi__rewind( s );


   p = (char) stbi__get8(s);
   t = (char) stbi__get8(s);
   if (p != 'P' || (t != '5' && t != '6')) {
       stbi__rewind( s );
       return 0;
   }

   *comp = (t == '6') ? 3 : 1;

   c = (char) stbi__get8(s);
   stbi__pnm_skip_whitespace(s, &c);

   *x = stbi__pnm_getinteger(s, &c);
   stbi__pnm_skip_whitespace(s, &c);

   *y = stbi__pnm_getinteger(s, &c);
   stbi__pnm_skip_whitespace(s, &c);

   maxv = stbi__pnm_getinteger(s, &c);

   if (maxv > 255)
      return stbi__err("max value > 255", "PPM image not 8-bit");
   else
      return 1;
}
