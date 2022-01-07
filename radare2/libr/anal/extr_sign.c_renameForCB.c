
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctxRenameForCB {char* nprefix; int oprefix; TYPE_1__* anal; } ;
struct TYPE_2__ {int * sdb_zigns; } ;
typedef int Sdb ;


 int R_SIGN_KEY_MAXSZ ;
 int R_SIGN_VAL_MAXSZ ;
 int sdb_remove (int *,char const*,int ) ;
 int sdb_set (int *,char*,char*,int ) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int strlen (int ) ;
 int strncmp (char const*,int ,int) ;

__attribute__((used)) static int renameForCB(void *user, const char *k, const char *v) {
 struct ctxRenameForCB *ctx = (struct ctxRenameForCB *) user;
 char nk[R_SIGN_KEY_MAXSZ], nv[R_SIGN_VAL_MAXSZ];
 const char *zigname = ((void*)0);
 Sdb *db = ctx->anal->sdb_zigns;

 if (!strncmp (k, ctx->oprefix, strlen (ctx->oprefix))) {
  zigname = k + strlen (ctx->oprefix);
  snprintf (nk, R_SIGN_KEY_MAXSZ, "%s%s", ctx->nprefix, zigname);
  snprintf (nv, R_SIGN_VAL_MAXSZ, "%s", v);
  sdb_remove (db, k, 0);
  sdb_set (db, nk, nv, 0);
 }

 return 1;
}
