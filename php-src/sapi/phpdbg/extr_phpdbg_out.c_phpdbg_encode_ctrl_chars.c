
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efree (char*) ;
 char* emalloc (int) ;
 char* erealloc (char*,int) ;

__attribute__((used)) static void phpdbg_encode_ctrl_chars(char **buf, int *buflen) {
 char *tmp, *tmpptr;
 int len;
 int i;

 tmp = tmpptr = emalloc(*buflen * 5);

 for (i = 0; i < *buflen; i++) {
  if ((*buf)[i] < 0x20) {
   *tmpptr++ = '&';
   *tmpptr++ = '#';
   if ((unsigned int) ((*buf)[i]) > 9) {
    *tmpptr++ = ((*buf)[i] / 10) + '0';
   }
   *tmpptr++ = ((*buf)[i] % 10) + '0';
   *tmpptr++ = ';';
  } else {
   *tmpptr++ = (*buf)[i];
  }
 }

 len = tmpptr - tmp;

 efree(*buf);
 *buf = erealloc(tmp, len + 1);
 *buflen = len;
}
