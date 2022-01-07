
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iscntrl (int) ;
 scalar_t__ malloc (size_t) ;
 scalar_t__ sprintf (char*,char*,char const) ;

__attribute__((used)) static char *_escape(const char *s, size_t n) {
  size_t i, j;
  char *res = (char *) malloc(n * 4 + 1);
  for (i = j = 0; s[i] != '\0' && i < n; i++) {
    if (!iscntrl((int) s[i])) {
      res[j++] = s[i];
    } else {
      j += sprintf(res + j, "\\x%02x", s[i]);
    }
  }
  res[j] = '\0';
  return res;
}
