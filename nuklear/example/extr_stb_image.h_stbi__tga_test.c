
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__context ;


 int stbi__get16be (int *) ;
 int stbi__get8 (int *) ;
 int stbi__rewind (int *) ;

__attribute__((used)) static int stbi__tga_test(stbi__context *s)
{
   int res;
   int sz;
   stbi__get8(s);
   sz = stbi__get8(s);
   if ( sz > 1 ) return 0;
   sz = stbi__get8(s);
   if ( (sz != 1) && (sz != 2) && (sz != 3) && (sz != 9) && (sz != 10) && (sz != 11) ) return 0;
   stbi__get16be(s);
   stbi__get16be(s);
   stbi__get8(s);
   stbi__get16be(s);
   stbi__get16be(s);
   if ( stbi__get16be(s) < 1 ) return 0;
   if ( stbi__get16be(s) < 1 ) return 0;
   sz = stbi__get8(s);
   if ( (sz != 8) && (sz != 16) && (sz != 24) && (sz != 32) )
      res = 0;
   else
      res = 1;
   stbi__rewind(s);
   return res;
}
