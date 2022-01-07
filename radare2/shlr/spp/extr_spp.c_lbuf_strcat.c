
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* lbuf; int lbuf_n; int lbuf_s; } ;
typedef TYPE_1__ SppBuf ;


 int fprintf (int ,char*) ;
 int memcpy (char*,char*,int) ;
 char* realloc (char*,int) ;
 int stderr ;
 int strlen (char*) ;

void lbuf_strcat(SppBuf *dst, char *src) {
 int len = strlen (src);
 char *nbuf;
 if (!dst->lbuf || (len + dst->lbuf_n) > dst->lbuf_s) {
  nbuf = realloc (dst->lbuf, dst->lbuf_s << 1);
  if (!nbuf) {
   fprintf (stderr, "Out of memory.\n");
   return;
  }
  dst->lbuf = nbuf;
 }
 memcpy (dst->lbuf + dst->lbuf_n, src, len + 1);
 dst->lbuf_n += len;
}
