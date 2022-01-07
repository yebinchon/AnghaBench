
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 unsigned long CKSUM_MAGIC_NUMBER ;
 int SEEK_END ;
 int fread (char*,int,int,int *) ;
 int fseek (int *,int,int ) ;

int cs_is_tagged(FILE *fp)
{
 char buf[8];

 fseek(fp, -8, SEEK_END);
 fread(buf, 8, 1, fp);
 if(*(unsigned long*)buf == CKSUM_MAGIC_NUMBER)
  return 1;
 return 0;
}
