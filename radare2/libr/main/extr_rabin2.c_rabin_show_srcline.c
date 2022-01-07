
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;


 int bin ;
 int free (char*) ;
 int printf (char*,char*) ;
 char* r_bin_addr2text (int ,int ,int) ;

__attribute__((used)) static int rabin_show_srcline(ut64 at) {
 char *srcline;
 if ((srcline = r_bin_addr2text (bin, at, 1))) {
  printf ("%s\n", srcline);
  free (srcline);
  return 1;
 }
 return 0;
}
