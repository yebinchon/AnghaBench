
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* sdb_fmt (char*,int) ;

__attribute__((used)) static const char *syscallNumber(int n) {
 return sdb_fmt (n > 1000 ? "0x%x" : "%d", n);
}
