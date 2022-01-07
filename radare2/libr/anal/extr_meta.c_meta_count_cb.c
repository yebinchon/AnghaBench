
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ctx; int count; } ;
typedef TYPE_1__ myMetaUser ;
struct TYPE_8__ {scalar_t__ space; int member_0; } ;
struct TYPE_7__ {int anal; TYPE_1__* user; } ;
typedef TYPE_2__ RAnalMetaUserItem ;
typedef TYPE_3__ RAnalMetaItem ;


 int meta_deserialize (int ,TYPE_3__*,char const*,char const*) ;
 int r_meta_item_fini (TYPE_3__*) ;
 int strstr (char const*,char*) ;

__attribute__((used)) static int meta_count_cb(void *user, const char *k, const char *v) {
 RAnalMetaUserItem *ui = user;
 myMetaUser *mu = ui->user;
 RAnalMetaItem it = {0};
 if (!strstr (k, ".0x")) {
  return 1;
 }
 meta_deserialize (ui->anal, &it, k, v);
 if (mu && it.space == mu->ctx) {
  mu->count++;
 }
 r_meta_item_fini (&it);
 return 1;
}
