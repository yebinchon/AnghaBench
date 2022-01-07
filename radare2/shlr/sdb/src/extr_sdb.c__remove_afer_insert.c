
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ht; } ;
typedef TYPE_1__ Sdb ;


 int sdb_ht_delete (int ,char const*) ;

__attribute__((used)) static int _remove_afer_insert(void *user, const char *k, const char *v) {
 Sdb *s = (Sdb *)user;
 if (s) {
  sdb_ht_delete (s->ht, k);
  return 1;
 }
 return 0;
}
