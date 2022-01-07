
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fread (char*,int,int,int *) ;

__attribute__((used)) static int
freadWrapper (void *context, char *buf, int len)
{
  int got = fread (buf, 1, len, (FILE *) context);
  return got;
}
