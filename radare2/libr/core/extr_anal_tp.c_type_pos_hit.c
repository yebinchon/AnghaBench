
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_3__ {int reg; } ;
typedef int Sdb ;
typedef TYPE_1__ RAnal ;


 int R_REG_NAME_SP ;
 int SDB_CONTAINS (int,char const*) ;
 char* r_reg_get_name (int ,int ) ;
 scalar_t__ r_reg_getv (int ,char const*) ;
 int sdb_fmt (char*,int) ;
 scalar_t__ sdb_num_get (int *,int ,int ) ;

__attribute__((used)) static bool type_pos_hit(RAnal *anal, Sdb *trace, bool in_stack, int idx, int size, const char *place) {
 if (in_stack) {
  const char *sp_name = r_reg_get_name (anal->reg, R_REG_NAME_SP);
  ut64 sp = r_reg_getv (anal->reg, sp_name);
  ut64 write_addr = sdb_num_get (trace, sdb_fmt ("%d.mem.write", idx), 0);
  return (write_addr == sp + size);
 }
 return SDB_CONTAINS (idx, place);
}
