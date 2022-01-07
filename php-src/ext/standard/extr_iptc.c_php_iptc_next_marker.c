
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int M_EOI ;
 int php_iptc_get1 (int *,int,unsigned char**) ;
 int php_iptc_put1 (int *,int,unsigned char,unsigned char**) ;

__attribute__((used)) static int php_iptc_next_marker(FILE *fp, int spool, unsigned char **spoolbuf)
{
    int c;



    c = php_iptc_get1(fp, spool, spoolbuf);

 if (c == EOF) return M_EOI;

    while (c != 0xff) {
        if ((c = php_iptc_get1(fp, spool, spoolbuf)) == EOF)
            return M_EOI;
    }


    do {
        c = php_iptc_get1(fp, 0, 0);
  if (c == EOF)
            return M_EOI;
  else
  if (c == 0xff)
   php_iptc_put1(fp, spool, (unsigned char)c, spoolbuf);
    } while (c == 0xff);

    return (unsigned int) c;
}
