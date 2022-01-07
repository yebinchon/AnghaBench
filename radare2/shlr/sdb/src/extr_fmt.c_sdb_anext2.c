
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDB_RS ;
 char* strchr (char const*,int ) ;

__attribute__((used)) static const char *sdb_anext2(const char *str, const char **next) {
 char *nxt, *p = strchr (str, SDB_RS);
 if (p) {
  nxt = p + 1;
 } else {
  nxt = ((void*)0);
 }
 if (next) {
  *next = nxt;
 }
 return str;
}
