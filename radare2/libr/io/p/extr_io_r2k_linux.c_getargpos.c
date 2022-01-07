
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* r_str_ichr (char*,char) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static const char* getargpos (const char *buf, int pos) {
 int i;
 for (i = 0; buf && i < pos; i++) {
  buf = strchr (buf, ' ');
  if (!buf) {
   break;
  }
  buf = r_str_ichr ((char *) buf, ' ');
 }
 return buf;
}
