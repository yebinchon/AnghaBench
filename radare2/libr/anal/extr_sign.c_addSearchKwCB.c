
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ctxAddSearchKwCB {scalar_t__ minsz; TYPE_1__* ss; } ;
struct TYPE_10__ {scalar_t__ size; int mask; int bytes; } ;
struct TYPE_9__ {int name; TYPE_3__* bytes; } ;
struct TYPE_8__ {int search; int items; } ;
typedef TYPE_1__ RSignSearch ;
typedef TYPE_2__ RSignItem ;
typedef TYPE_3__ RSignBytes ;
typedef int RSearchKeyword ;


 int eprintf (char*,int ) ;
 int r_list_append (int ,TYPE_2__*) ;
 int * r_search_keyword_new (int ,scalar_t__,int ,scalar_t__,char const*) ;
 int r_search_kw_add (int ,int *) ;
 TYPE_2__* r_sign_item_dup (TYPE_2__*) ;

__attribute__((used)) static int addSearchKwCB(RSignItem *it, void *user) {
 struct ctxAddSearchKwCB *ctx = (struct ctxAddSearchKwCB *) user;
 RSignSearch *ss = ctx->ss;
 RSignBytes *bytes = it->bytes;
 RSearchKeyword *kw = ((void*)0);

 if (!bytes) {
  eprintf ("Cannot find bytes for this signature: %s\n", it->name);
  return 1;
 }

 if (ctx->minsz && bytes->size < ctx->minsz) {
  return 1;
 }
 RSignItem *it2 = r_sign_item_dup (it);
 if (it2) {
  r_list_append (ss->items, it2);

  kw = r_search_keyword_new (bytes->bytes, bytes->size, bytes->mask, bytes->size, (const char *) it2);
  r_search_kw_add (ss->search, kw);
 }
 return 1;
}
