
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int FILE ;


 int convert (int const,char*) ;
 int fwrite (char*,int,int,int * const) ;

__attribute__((used)) static void
puttzcode(const int32 val, FILE *const fp)
{
 char buf[4];

 convert(val, buf);
 fwrite(buf, sizeof buf, 1, fp);
}
