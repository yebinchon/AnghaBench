
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 char* memcpy (char*,char const*,int) ;
 char* pp_xmalloc (int) ;
 int strlen (char const*) ;

char *pp_xstrdup(const char *str)
{
 char *s;
 int len;

 assert(str != ((void*)0));
 len = strlen(str)+1;
 s = pp_xmalloc(len);
 if(!s)
  return ((void*)0);
 return memcpy(s, str, len);
}
