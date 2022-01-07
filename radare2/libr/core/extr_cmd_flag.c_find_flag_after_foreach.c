
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct find_flag_t {scalar_t__ at; TYPE_1__* win; } ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ offset; } ;
struct TYPE_4__ {scalar_t__ offset; } ;
typedef TYPE_2__ RFlagItem ;
typedef int RFlag ;


 int find_flag_after ;
 int r_flag_foreach (int *,int ,struct find_flag_t*) ;

__attribute__((used)) static bool find_flag_after_foreach(RFlagItem *flag, void *user) {
 if (flag->size != 0) {
  return 1;
 }

 RFlag *flags = (RFlag *)user;
 struct find_flag_t u = { .win = ((void*)0), .at = flag->offset };
 r_flag_foreach (flags, find_flag_after, &u);
 if (u.win) {
  flag->size = u.win->offset - flag->offset;
 }
 return 1;
}
