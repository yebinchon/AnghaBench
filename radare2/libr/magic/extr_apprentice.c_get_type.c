
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type_tbl_s {int len; int type; int name; } ;


 scalar_t__ strncmp (char const*,int ,int) ;
 struct type_tbl_s* type_tbl ;

__attribute__((used)) static int get_type(const char *l, const char **t) {
 const struct type_tbl_s *p;

 for (p = type_tbl; p->len; p++) {
  if (strncmp (l, p->name, p->len) == 0) {
   if (t) {
    *t = l + p->len;
   }
   break;
  }
 }
 return p->type;
}
