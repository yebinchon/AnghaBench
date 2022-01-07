
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pair (char const*,int ,int,int) ;
 int sdb_fmt (char*,int) ;

__attribute__((used)) static void pair_int(const char *key, int val, int mode, bool last) {
 pair (key, sdb_fmt ("%d", val), mode, last);
}
