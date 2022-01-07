
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sdb ;


 int sdb_set (int *,char const*,char const*,int ) ;

__attribute__((used)) static int copy_foreach_cb(void *user, const char *k, const char *v) {
 Sdb *dst = user;
 sdb_set (dst, k, v, 0);
 return 1;
}
