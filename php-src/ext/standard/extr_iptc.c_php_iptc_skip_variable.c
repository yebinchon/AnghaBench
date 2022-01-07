
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int M_EOI ;
 int php_iptc_get1 (int *,int,unsigned char**) ;

__attribute__((used)) static int php_iptc_skip_variable(FILE *fp, int spool, unsigned char **spoolbuf)
{
 unsigned int length;
 int c1, c2;

    if ((c1 = php_iptc_get1(fp, spool, spoolbuf)) == EOF) return M_EOI;

    if ((c2 = php_iptc_get1(fp, spool, spoolbuf)) == EOF) return M_EOI;

 length = (((unsigned char) c1) << 8) + ((unsigned char) c2);

 length -= 2;

 while (length--)
  if (php_iptc_get1(fp, spool, spoolbuf) == EOF) return M_EOI;

 return 0;
}
