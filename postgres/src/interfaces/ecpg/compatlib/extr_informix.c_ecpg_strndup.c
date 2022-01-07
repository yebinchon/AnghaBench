
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int errno ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
ecpg_strndup(const char *str, size_t len)
{
 size_t real_len = strlen(str);
 int use_len = (int) ((real_len > len) ? len : real_len);

 char *new = malloc(use_len + 1);

 if (new)
 {
  memcpy(new, str, use_len);
  new[use_len] = '\0';
 }
 else
  errno = ENOMEM;

 return new;
}
