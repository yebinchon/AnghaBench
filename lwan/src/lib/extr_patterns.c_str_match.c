
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct str_match {char* error; int sm_nmatch; scalar_t__ sm_so; scalar_t__ sm_eo; int ** sm_match; } ;
struct str_find {char* error; int sm_nmatch; scalar_t__ sm_so; scalar_t__ sm_eo; int ** sm_match; } ;
struct match_state {char* error; int sm_nmatch; scalar_t__ sm_so; scalar_t__ sm_eo; int ** sm_match; } ;
typedef int sm ;
typedef int ms ;


 int MAXCAPTURES ;
 int ** calloc (size_t,int) ;
 int errno ;
 int memset (struct str_match*,int ,int) ;
 int str_find_aux (struct str_match*,char const*,char const*,struct str_match*,size_t,int ) ;
 int str_match_free (struct str_match*) ;
 char* strerror (int ) ;
 int * strndup (char const*,size_t) ;

int
str_match(const char *string, const char *pattern, struct str_match *m,
    const char **errstr)
{
 struct str_find sm[MAXCAPTURES];
 struct match_state ms;
 int i, ret;
 size_t len, nsm;

 nsm = MAXCAPTURES;
 memset(&ms, 0, sizeof(ms));
 memset(sm, 0, sizeof(sm));
 memset(m, 0, sizeof(*m));

 ret = str_find_aux(&ms, pattern, string, sm, nsm, 0);
 if (ret <= 0 || ms.error != ((void*)0)) {

  *errstr = ms.error;
  return (-1);
 }

 if ((m->sm_match = calloc((size_t)ret, sizeof(char *))) == ((void*)0)) {
  *errstr = strerror(errno);
  return (-1);
 }
 m->sm_nmatch = ret;

 for (i = 0; i < ret; i++) {
  if (sm[i].sm_so > sm[i].sm_eo)
   continue;
  len = (size_t)(sm[i].sm_eo - sm[i].sm_so);
  if ((m->sm_match[i] = strndup(string +
      sm[i].sm_so, len)) == ((void*)0)) {
   *errstr = strerror(errno);
   str_match_free(m);
   return (-1);
  }
 }

 *errstr = ((void*)0);
 return (0);
}
