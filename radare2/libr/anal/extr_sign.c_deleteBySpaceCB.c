
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctxDeleteCB {TYPE_1__* anal; int buf; } ;
struct TYPE_2__ {int sdb_zigns; } ;


 int sdb_remove (int ,char const*,int ) ;
 int strlen (int ) ;
 int strncmp (char const*,int ,int ) ;

__attribute__((used)) static int deleteBySpaceCB(void *user, const char *k, const char *v) {
 struct ctxDeleteCB *ctx = (struct ctxDeleteCB *) user;
 if (!strncmp (k, ctx->buf, strlen (ctx->buf))) {
  sdb_remove (ctx->anal->sdb_zigns, k, 0);
 }
 return 1;
}
