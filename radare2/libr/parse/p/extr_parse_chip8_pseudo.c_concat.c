
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t snprintf (char*,size_t,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void concat(char *buf, size_t len, char** args) {
 char *arg;
 char *dest = buf;
 int arg_len;

 while ((arg = *args++)) {
  if (snprintf (dest, len, "%s", arg) >= len) {
   break;
  }
  arg_len = strlen (arg);
  dest += arg_len;
  len -= arg_len;
 }
}
