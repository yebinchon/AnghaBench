
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int PUTC (char) ;
 int getc (int *) ;

__attribute__((used)) static int php_iptc_get1(FILE *fp, int spool, unsigned char **spoolbuf)
{
 int c;
 char cc;

 c = getc(fp);

 if (c == EOF) return EOF;

 if (spool > 0) {
  cc = c;
  PUTC(cc);
 }

 if (spoolbuf) *(*spoolbuf)++ = c;

 return c;
}
