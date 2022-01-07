
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppc_cpu_t ;


 char* _ (char*) ;
 int valid_bo (long,int ,int ) ;

__attribute__((used)) static unsigned long
insert_bo (unsigned long insn,
    long value,
    ppc_cpu_t dialect,
    const char **errmsg)
{
 if (!valid_bo (value, dialect, 0)) {
  *errmsg = _ ("invalid conditional option");
 }
 return insn | ((value & 0x1f) << 21);
}
