
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char const*,int,unsigned int) ;
 scalar_t__ memcmp (char*,char const*,unsigned int) ;
 unsigned int strlen (char const*) ;

char *ath79_nvram_find_var(const char *name, const char *buf, unsigned buf_len)
{
 unsigned len = strlen(name);
 char *cur, *last;

 if (buf_len == 0 || len == 0)
  return ((void*)0);

 if (buf_len < len)
  return ((void*)0);

 if (len == 1)
  return memchr(buf, (int) *name, buf_len);

 last = (char *) buf + buf_len - len;
 for (cur = (char *) buf; cur <= last; cur++)
  if (cur[0] == name[0] && memcmp(cur, name, len) == 0)
   return cur + len;

 return ((void*)0);
}
