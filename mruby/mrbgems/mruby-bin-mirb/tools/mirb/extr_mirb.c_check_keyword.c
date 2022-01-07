
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISSPACE (char const) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static int
check_keyword(const char *buf, const char *word)
{
  const char *p = buf;
  size_t len = strlen(word);


  while (*p && ISSPACE(*p)) {
    p++;
  }

  if (strncmp(p, word, len) != 0) {
    return 0;
  }
  p += len;

  while (*p) {
    if (!ISSPACE(*p)) return 0;
    p++;
  }
  return 1;
}
