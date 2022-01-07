
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int putc (char,int *) ;

__attribute__((used)) static void
fill(int length, int max, char filler, FILE *fp)
{
 int count;

 count = max - length;
 while (count-- >= 0)
  putc(filler, fp);
}
