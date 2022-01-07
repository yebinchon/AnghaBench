
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef long long ut64 ;
struct TYPE_5__ {int ht_name; } ;
struct TYPE_4__ {long long offset; scalar_t__ alias; } ;
typedef int RNum ;
typedef TYPE_1__ RFlagItem ;
typedef TYPE_2__ RFlag ;


 TYPE_1__* ht_pp_find (int ,char const*,int *) ;

__attribute__((used)) static ut64 num_callback(RNum *user, const char *name, int *ok) {
 RFlag *f = (RFlag *)user;
 if (ok) {
  *ok = 0;
 }
 RFlagItem *item = ht_pp_find (f->ht_name, name, ((void*)0));
 if (item) {

  if (item->alias) {
   return 0LL;
  }
  if (ok) {
   *ok = 1;
  }
  return item->offset;
 }
 return 0LL;
}
