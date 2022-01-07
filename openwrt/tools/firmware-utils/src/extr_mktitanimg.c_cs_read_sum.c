
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int fread (char*,int,int,int *) ;
 int fseek (int *,int,int ) ;

unsigned long cs_read_sum(FILE *fp)
{
 char buf[8];

 fseek(fp, -8, SEEK_END);
 fread(buf, 8, 1, fp);
 return *((unsigned long*)&buf[4]);
}
