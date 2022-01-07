
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int Sdb ;


 int UT64_MAX ;
 int r_num_math (int *,int ) ;
 int sdb_const_get (int *,char const*,int ) ;
 char* sdb_fmt (char*,int,char const*) ;

__attribute__((used)) static ut64 get_addr(Sdb *trace, const char *regname, int idx) {
 if (!regname || !*regname) {
  return UT64_MAX;
 }
 const char *query = sdb_fmt ("%d.reg.read.%s", idx, regname);
 return r_num_math (((void*)0), sdb_const_get (trace, query, 0));
}
