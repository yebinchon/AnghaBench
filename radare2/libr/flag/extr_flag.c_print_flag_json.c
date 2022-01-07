
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct print_flag_t {scalar_t__ range_from; scalar_t__ range_to; int pj; scalar_t__ in_range; } ;
struct TYPE_3__ {scalar_t__ offset; int comment; int alias; int size; int realname; int name; } ;
typedef TYPE_1__ RFlagItem ;


 int pj_end (int ) ;
 int pj_ki (int ,char*,int ) ;
 int pj_kn (int ,char*,scalar_t__) ;
 int pj_ks (int ,char*,int ) ;
 int pj_o (int ) ;

__attribute__((used)) static bool print_flag_json(RFlagItem *flag, void *user) {
 struct print_flag_t *u = (struct print_flag_t *)user;
 if (u->in_range && (flag->offset < u->range_from || flag->offset >= u->range_to)) {
  return 1;
 }
 pj_o (u->pj);
 pj_ks (u->pj, "name", flag->name);
 if (flag->name != flag->realname) {
  pj_ks (u->pj, "realname", flag->realname);
 }
 pj_ki (u->pj, "size", flag->size);
 if (flag->alias) {
  pj_ks (u->pj, "alias", flag->alias);
 } else {
  pj_kn (u->pj, "offset", flag->offset);
 }
 if (flag->comment) {
  pj_ks (u->pj, "comment", flag->comment);
 }
 pj_end (u->pj);
 return 1;
}
