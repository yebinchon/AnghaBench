
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; char* buf; char* ptr; int ptrlen; } ;
typedef TYPE_1__ SStrBuf ;


 int R_FREE (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 char* realloc (char*,int) ;
 int strlen (char const*) ;

int r_strbuf_append(SStrBuf *sb, const char *s) {
 int l = strlen (s);
 if (l < 1) {
  return 0;
 }
 if ((sb->len + l + 1) < sizeof (sb->buf)) {
  memcpy (sb->buf + sb->len, s, l + 1);
  R_FREE (sb->ptr);
 } else {
  int newlen = sb->len + l + 128;
  char *p = sb->ptr;
  bool allocated = 1;
  if (!sb->ptr) {
   p = malloc (newlen);
   if (p && sb->len > 0) {
    memcpy (p, sb->buf, sb->len);
   }
  } else if (sb->len + l + 1 > sb->ptrlen) {
   p = realloc (sb->ptr, newlen);
  } else {
   allocated = 0;
  }
  if (allocated) {
   if (!p) return 0;
   sb->ptr = p;
   sb->ptrlen = newlen;
  }
  memcpy (p + sb->len, s, l + 1);
 }
 sb->len += l;
 return 1;
}
