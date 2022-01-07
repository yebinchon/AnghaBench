
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ EOF ;
 int M_EOI ;
 scalar_t__ php_iptc_get1 (int *,int,unsigned char**) ;

__attribute__((used)) static int php_iptc_read_remaining(FILE *fp, int spool, unsigned char **spoolbuf)
{
   while (php_iptc_get1(fp, spool, spoolbuf) != EOF) continue;

 return M_EOI;
}
