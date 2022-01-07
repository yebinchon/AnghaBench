
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int size; char* buf; } ;
typedef TYPE_1__ StrBuf ;


 int memcpy (char*,char const*,int) ;
 char* realloc (char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static StrBuf* strbuf_append(StrBuf *sb, const char *str, const int nl) {
 if (!sb || !str || nl < 0) {
  return sb;
 }
 int len = strlen (str);
 if ((sb->len + len + 2) >= sb->size) {
  int newsize = sb->size + len + 256;
  char *b = realloc (sb->buf, newsize);

  if (!b) {
   return ((void*)0);
  }
  sb->buf = b;
  sb->size = newsize;
 }
 if (sb->buf && str) {
  memcpy (sb->buf + sb->len, str, len);
  sb->len += len;
 }






 if (sb->buf) {
  sb->buf[sb->len] = 0;
 }
 return sb;
}
