
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 char const* ext ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static char *mkdbname(const char *fn, int strip) {
 char *buf = ((void*)0);
 int fnlen, extlen;
 if (strip) {
  const char *p;
  if ((p = strrchr (fn, '/')) != ((void*)0)) {
   fn = ++p;
  }
 }
 fnlen = strlen (fn);
 extlen = strlen (ext);
 if (fnlen + extlen + 1 > MAXPATHLEN) {
  return ((void*)0);
 }
 buf = malloc (fnlen + extlen + 1);
 if (buf) {
  memcpy (buf, fn, fnlen);
  memcpy (buf+fnlen, ext, extlen);
  buf[fnlen+extlen] = 0;
 }
 return buf;
}
