
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi_uc ;
typedef int stbi__context ;


 int STBI_FREE (int *) ;
 int memset (int *,int,int) ;
 scalar_t__ stbi__at_eof (int *) ;
 int * stbi__convert_format (int *,int,int,int,int) ;
 int * stbi__errpuc (char*,char*) ;
 int stbi__get16be (int *) ;
 int stbi__get32be (int *) ;
 int stbi__get8 (int *) ;
 scalar_t__ stbi__malloc (int) ;
 int stbi__pic_load_core (int *,int,int,int*,int *) ;

__attribute__((used)) static stbi_uc *stbi__pic_load(stbi__context *s,int *px,int *py,int *comp,int req_comp)
{
   stbi_uc *result;
   int i, x,y;

   for (i=0; i<92; ++i)
      stbi__get8(s);

   x = stbi__get16be(s);
   y = stbi__get16be(s);
   if (stbi__at_eof(s)) return stbi__errpuc("bad file","file too short (pic header)");
   if ((1 << 28) / x < y) return stbi__errpuc("too large", "Image too large to decode");

   stbi__get32be(s);
   stbi__get16be(s);
   stbi__get16be(s);


   result = (stbi_uc *) stbi__malloc(x*y*4);
   memset(result, 0xff, x*y*4);

   if (!stbi__pic_load_core(s,x,y,comp, result)) {
      STBI_FREE(result);
      result=0;
   }
   *px = x;
   *py = y;
   if (req_comp == 0) req_comp = *comp;
   result=stbi__convert_format(result,4,req_comp,x,y);

   return result;
}
