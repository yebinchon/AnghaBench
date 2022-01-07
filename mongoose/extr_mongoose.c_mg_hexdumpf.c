
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int FILE ;


 int fputs (char*,int *) ;
 int mg_hexdump_n (char const*,int,char*,int,int) ;

void mg_hexdumpf(FILE *fp, const void *buf, int len) {
  char tmp[80];
  int offset = 0, n;
  while (len > 0) {
    n = (len < 16 ? len : 16);
    mg_hexdump_n(((const char *) buf) + offset, n, tmp, sizeof(tmp), offset);
    fputs(tmp, fp);
    offset += n;
    len -= n;
  }
}
