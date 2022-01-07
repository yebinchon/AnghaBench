
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char const*,char const*) ;
 scalar_t__ fopen_s (int **,char const*,char const*) ;

__attribute__((used)) static FILE *stbi__fopen(char const *filename, char const *mode)
{
   FILE *f;




   f = fopen(filename, mode);

   return f;
}
