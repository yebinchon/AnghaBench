
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; scalar_t__ str; int from; } ;
struct TYPE_4__ {scalar_t__ fcn; int anal; } ;
typedef TYPE_1__ RAnalMetaUserItem ;
typedef TYPE_2__ RAnalMetaItem ;


 int free (scalar_t__) ;
 int meta_deserialize (int ,TYPE_2__*,char const*,char const*) ;
 int r_anal_fcn_in (scalar_t__,int ) ;
 scalar_t__ strdup (char*) ;

__attribute__((used)) static int get_meta_size(void *user, const char *k, const char *v) {
 RAnalMetaUserItem *ui = user;
 RAnalMetaItem it;
 if (!meta_deserialize (ui->anal, &it, k, v)) {
  return -1;
 }
 if (ui->fcn && !r_anal_fcn_in (ui->fcn, it.from)) {
  goto beach;
 }
 if (!it.str) {
  it.str = strdup ("");
  if (!it.str) {
   goto beach;
  }
 }
 return it.size;
beach:
 free (it.str);
 return -1;
}
