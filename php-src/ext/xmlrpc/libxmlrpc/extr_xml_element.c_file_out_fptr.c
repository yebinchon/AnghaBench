
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputs (char const*,int *) ;

__attribute__((used)) static int file_out_fptr(void *f, const char *text, int size)
{
   fputs(text, (FILE *)f);
   return 0;
}
