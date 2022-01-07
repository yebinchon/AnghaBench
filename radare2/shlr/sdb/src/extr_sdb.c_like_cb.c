
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const** array; int array_index; int array_size; int sdb; int (* cb ) (int ,char const*,char const*) ;scalar_t__ val; scalar_t__ key; } ;
typedef TYPE_1__ LikeCallbackData ;


 scalar_t__ realloc (char const**,int) ;
 int sdb_match (char const*,scalar_t__) ;
 int stub1 (int ,char const*,char const*) ;

__attribute__((used)) static int like_cb(void *user, const char *k, const char *v) {
 LikeCallbackData *lcd = user;
 if (!user) {
  return 0;
 }
 if (k && lcd->key && !sdb_match (k, lcd->key)) {
  return 1;
 }
 if (v && lcd->val && !sdb_match (v, lcd->val)) {
  return 1;
 }
 if (lcd->array) {
  int idx = lcd->array_index;
  int newsize = lcd->array_size + sizeof (char*) * 2;
  const char **newarray = (const char **)realloc (lcd->array, newsize);
  if (!newarray) {
   return 0;
  }
  lcd->array = newarray;
  lcd->array_size = newsize;

  lcd->array[idx] = k;
  lcd->array[idx + 1] = v;
  lcd->array[idx + 2] = ((void*)0);
  lcd->array[idx + 3] = ((void*)0);
  lcd->array_index = idx+2;
 } else {
  if (lcd->cb) {
   lcd->cb (lcd->sdb, k, v);
  }
 }
 return 1;
}
