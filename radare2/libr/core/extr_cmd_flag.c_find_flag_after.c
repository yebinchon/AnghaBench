
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct find_flag_t {scalar_t__ at; TYPE_1__* win; } ;
struct TYPE_3__ {scalar_t__ offset; } ;
typedef TYPE_1__ RFlagItem ;



__attribute__((used)) static bool find_flag_after(RFlagItem *flag, void *user) {
 struct find_flag_t *u = (struct find_flag_t *)user;
 if (flag->offset > u->at && (!u->win || flag->offset < u->win->offset)) {
  u->win = flag;
 }
 return 1;
}
