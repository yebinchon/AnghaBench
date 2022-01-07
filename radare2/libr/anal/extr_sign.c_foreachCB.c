
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ctxForeachCB {int user; int (* cb ) (TYPE_1__*,int ) ;TYPE_2__* anal; } ;
struct TYPE_9__ {int zign_spaces; } ;
struct TYPE_8__ {int * space; } ;
typedef int RSpace ;
typedef TYPE_1__ RSignItem ;
typedef TYPE_2__ RAnal ;


 int eprintf (char*) ;
 scalar_t__ r_sign_deserialize (TYPE_2__*,TYPE_1__*,char const*,char const*) ;
 int r_sign_item_free (TYPE_1__*) ;
 TYPE_1__* r_sign_item_new () ;
 int * r_spaces_current (int *) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int foreachCB(void *user, const char *k, const char *v) {
 struct ctxForeachCB *ctx = (struct ctxForeachCB *) user;
 RSignItem *it = r_sign_item_new ();
 RAnal *a = ctx->anal;
 int retval = 1;

 if (r_sign_deserialize (a, it, k, v)) {
  RSpace *cur = r_spaces_current (&a->zign_spaces);
  if (ctx->cb && cur == it->space) {
   ctx->cb (it, ctx->user);
  }
 } else {
  eprintf ("error: cannot deserialize zign\n");
 }
 r_sign_item_free (it);
 return retval;
}
