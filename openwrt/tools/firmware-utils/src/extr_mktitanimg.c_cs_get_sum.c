
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int fread (unsigned long*,int,int,int *) ;
 int fseek (int *,int,int ) ;

void cs_get_sum(FILE *fp, unsigned long *sum)
{
 unsigned long magic = 0;

 fseek(fp, -8, SEEK_END);

 fread(&magic, 4, 1, fp);
 fread(sum, 4, 1, fp);
}
