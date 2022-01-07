
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unset_foreach_t {int n; int f; } ;
typedef int RFlagItem ;


 scalar_t__ IS_FI_NOTIN_SPACE (int ,int *) ;
 int r_flag_unset (int ,int *) ;

__attribute__((used)) static bool unset_foreach(RFlagItem *fi, void *user) {
 struct unset_foreach_t *u = (struct unset_foreach_t *)user;
 if (IS_FI_NOTIN_SPACE (u->f, fi)) {
  return 1;
 }
 r_flag_unset (u->f, fi);
 u->n++;
 return 1;
}
