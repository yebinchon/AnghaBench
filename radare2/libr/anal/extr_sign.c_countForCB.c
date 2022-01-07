
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ctxCountForCB {scalar_t__ space; int count; int anal; } ;
struct TYPE_5__ {scalar_t__ space; } ;
typedef TYPE_1__ RSignItem ;


 int eprintf (char*) ;
 scalar_t__ r_sign_deserialize (int ,TYPE_1__*,char const*,char const*) ;
 int r_sign_item_free (TYPE_1__*) ;
 TYPE_1__* r_sign_item_new () ;

__attribute__((used)) static int countForCB(void *user, const char *k, const char *v) {
 struct ctxCountForCB *ctx = (struct ctxCountForCB *) user;
 RSignItem *it = r_sign_item_new ();

 if (r_sign_deserialize (ctx->anal, it, k, v)) {
  if (it->space == ctx->space) {
   ctx->count++;
  }
 } else {
  eprintf ("error: cannot deserialize zign\n");
 }
 r_sign_item_free (it);

 return 1;
}
