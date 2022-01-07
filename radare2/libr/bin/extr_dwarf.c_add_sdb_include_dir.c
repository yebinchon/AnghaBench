
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sdb ;


 int sdb_array_set (int *,char*,int,char const*,int ) ;

__attribute__((used)) static int add_sdb_include_dir(Sdb *s, const char *incl, int idx) {
 if (!s || !incl) {
  return 0;
 }
 return sdb_array_set (s, "includedirs", idx, incl, 0);
}
