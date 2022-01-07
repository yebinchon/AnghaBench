
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__context ;


 char const stbi__get8 (int *) ;

__attribute__((used)) static int stbi__hdr_test_core(stbi__context *s)
{
   const char *signature = "#?RADIANCE\n";
   int i;
   for (i=0; signature[i]; ++i)
      if (stbi__get8(s) != signature[i])
         return 0;
   return 1;
}
