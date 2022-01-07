
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputc (int ,int *) ;

__attribute__((used)) static void
fputnbytes(FILE *f, const char *str, size_t n)
{
 while (n-- > 0)
  fputc(*str++, f);
}
