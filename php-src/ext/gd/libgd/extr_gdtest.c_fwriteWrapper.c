
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fwrite (char const*,int,int,int *) ;

__attribute__((used)) static int
fwriteWrapper (void *context, const char *buffer, int len)
{
  return fwrite (buffer, 1, len, (FILE *) context);
}
