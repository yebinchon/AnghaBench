
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zic_t ;
typedef int FILE ;


 int convert64 (int ,char*) ;
 int fwrite (char*,int,int,int *) ;
 int puttzcode (int ,int *) ;

__attribute__((used)) static void
puttzcodepass(zic_t val, FILE *fp, int pass)
{
 if (pass == 1)
  puttzcode(val, fp);
 else
 {
  char buf[8];

  convert64(val, buf);
  fwrite(buf, sizeof buf, 1, fp);
 }
}
