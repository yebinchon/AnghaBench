
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* stbi__zdefault_distance ;
 int* stbi__zdefault_length ;

__attribute__((used)) static void stbi__init_zdefaults(void)
{
   int i;
   for (i=0; i <= 143; ++i) stbi__zdefault_length[i] = 8;
   for ( ; i <= 255; ++i) stbi__zdefault_length[i] = 9;
   for ( ; i <= 279; ++i) stbi__zdefault_length[i] = 7;
   for ( ; i <= 287; ++i) stbi__zdefault_length[i] = 8;

   for (i=0; i <= 31; ++i) stbi__zdefault_distance[i] = 5;
}
