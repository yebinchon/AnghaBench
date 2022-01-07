
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PUTC (unsigned char) ;

__attribute__((used)) static int php_iptc_put1(FILE *fp, int spool, unsigned char c, unsigned char **spoolbuf)
{
 if (spool > 0)
  PUTC(c);

 if (spoolbuf) *(*spoolbuf)++ = c;

   return c;
}
