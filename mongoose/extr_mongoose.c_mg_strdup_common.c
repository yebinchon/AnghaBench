
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {scalar_t__ len; char* p; int member_1; int * member_0; } ;


 scalar_t__ MG_MALLOC (int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static struct mg_str mg_strdup_common(const struct mg_str s,
                                      int nul_terminate) {
  struct mg_str r = {((void*)0), 0};
  if (s.len > 0 && s.p != ((void*)0)) {
    char *sc = (char *) MG_MALLOC(s.len + (nul_terminate ? 1 : 0));
    if (sc != ((void*)0)) {
      memcpy(sc, s.p, s.len);
      if (nul_terminate) sc[s.len] = '\0';
      r.p = sc;
      r.len = s.len;
    }
  }
  return r;
}
