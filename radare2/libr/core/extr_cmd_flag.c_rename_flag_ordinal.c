
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rename_flag_t {TYPE_1__* core; int count; int pfx; } ;
struct TYPE_2__ {int flags; } ;
typedef int RFlagItem ;


 int free (char*) ;
 int r_flag_rename (int ,int *,char*) ;
 char* r_str_newf (char*,int ,int ) ;

__attribute__((used)) static bool rename_flag_ordinal(RFlagItem *fi, void *user) {
 struct rename_flag_t *u = (struct rename_flag_t *)user;
 char *newName = r_str_newf ("%s%d", u->pfx, u->count++);
 if (!newName) {
  return 0;
 }
 r_flag_rename (u->core->flags, fi, newName);
 free (newName);
 return 1;
}
