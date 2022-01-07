
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctxGetListCB {int list; int anal; } ;
typedef int RSignItem ;


 int r_list_append (int ,int *) ;
 int r_sign_deserialize (int ,int *,char const*,char const*) ;
 int r_sign_item_free (int *) ;
 int * r_sign_item_new () ;

__attribute__((used)) static int listGetCB(void *user, const char *key, const char *val) {
 struct ctxGetListCB *ctx = user;
 RSignItem *item = r_sign_item_new ();
 if (!item) {
  return 0;
 }
 if (!r_sign_deserialize (ctx->anal, item, key, val)) {
  r_sign_item_free (item);
  return 0;
 }
 r_list_append (ctx->list, item);

 return 1;
}
