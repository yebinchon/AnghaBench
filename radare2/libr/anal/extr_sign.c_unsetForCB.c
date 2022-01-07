
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ctxUnsetForCB {TYPE_2__* anal; int * space; } ;
struct TYPE_9__ {int * sdb_zigns; } ;
struct TYPE_8__ {int * space; } ;
typedef int Sdb ;
typedef TYPE_1__ RSignItem ;


 int R_SIGN_KEY_MAXSZ ;
 int R_SIGN_VAL_MAXSZ ;
 int eprintf (char*) ;
 scalar_t__ r_sign_deserialize (TYPE_2__*,TYPE_1__*,char const*,char const*) ;
 int r_sign_item_free (TYPE_1__*) ;
 TYPE_1__* r_sign_item_new () ;
 int sdb_remove (int *,char const*,int ) ;
 int sdb_set (int *,char*,char*,int ) ;
 int serialize (TYPE_2__*,TYPE_1__*,char*,char*) ;

__attribute__((used)) static int unsetForCB(void *user, const char *k, const char *v) {
 struct ctxUnsetForCB *ctx = (struct ctxUnsetForCB *) user;
 char nk[R_SIGN_KEY_MAXSZ], nv[R_SIGN_VAL_MAXSZ];
 RSignItem *it = r_sign_item_new ();
 Sdb *db = ctx->anal->sdb_zigns;

 if (r_sign_deserialize (ctx->anal, it, k, v)) {
  if (it->space && it->space == ctx->space) {
   it->space = ((void*)0);
   serialize (ctx->anal, it, nk, nv);
   sdb_remove (db, k, 0);
   sdb_set (db, nk, nv, 0);
  }
 } else {
  eprintf ("error: cannot deserialize zign\n");
 }
 r_sign_item_free (it);

 return 1;
}
