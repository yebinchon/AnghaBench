
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sdb_set (void*,char const*,char const*,int ) ;

__attribute__((used)) static int sdb_merge_cb(void *user, const char *k, const char *v) {
 sdb_set (user, k, v, 0);
 return 1;
}
