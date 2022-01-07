
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pair (char const*,int ,int,int) ;
 int r_str_bool (int) ;

__attribute__((used)) static void pair_bool(const char *key, bool val, int mode, bool last) {
 pair (key, r_str_bool (val), mode, last);
}
