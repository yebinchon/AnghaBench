
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct str_find {char* error; } ;
struct match_state {char* error; } ;
typedef int ms ;


 int memset (struct str_find*,int ,size_t) ;
 int str_find_aux (struct str_find*,char const*,char const*,struct str_find*,size_t,int ) ;

int
str_find(const char *string, const char *pattern, struct str_find *sm,
    size_t nsm, const char **errstr)
{
 struct match_state ms;
 int ret;

 memset(&ms, 0, sizeof(ms));
 memset(sm, 0, nsm * sizeof(*sm));

 ret = str_find_aux(&ms, pattern, string, sm, nsm, 0);
 if (ms.error != ((void*)0)) {

  *errstr = ms.error;
  ret = 0;
 } else
  *errstr = ((void*)0);

 return (ret);
}
