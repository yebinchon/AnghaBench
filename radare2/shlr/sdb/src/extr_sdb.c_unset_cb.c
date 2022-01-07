
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sdb; int key; } ;
typedef TYPE_1__ UnsetCallbackData ;


 scalar_t__ sdb_match (char const*,int ) ;
 int sdb_unset (int ,char const*,int ) ;

__attribute__((used)) static int unset_cb(void *user, const char *k, const char *v) {
 UnsetCallbackData *ucd = user;
 if (sdb_match (k, ucd->key)) {
  sdb_unset (ucd->sdb, k, 0);
 }
 return 1;
}
