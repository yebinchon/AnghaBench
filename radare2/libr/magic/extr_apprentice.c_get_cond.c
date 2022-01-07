
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;






 scalar_t__ isspace (int ) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

__attribute__((used)) static int get_cond(const char *l, const char **t) {
 const struct cond_tbl_s *p;
 static const struct cond_tbl_s {
  char name[8];
  size_t len;
  int cond;
 } cond_tbl[] = {
  { "if", 2, 129 },
  { "elif", 4, 131 },
  { "else", 4, 130 },
  { "", 0, 128 },
 };

 for (p = cond_tbl; p->len; p++) {
  if (strncmp (l, p->name, p->len) == 0 &&
    isspace ((ut8)l[p->len])) {
   if (t) {
    *t = l + p->len;
   }
   break;
  }
 }
 return p->cond;
}
