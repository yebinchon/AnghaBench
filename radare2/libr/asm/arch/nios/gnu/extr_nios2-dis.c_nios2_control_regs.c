
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nios2_reg {int name; } ;


 int NUMREGNAMES ;
 int assert (struct nios2_reg*) ;
 int nios2_num_regs ;
 struct nios2_reg* nios2_regs ;
 int strcmp (int ,char*) ;

__attribute__((used)) static struct nios2_reg *
nios2_control_regs (void)
{
  static struct nios2_reg *cached = ((void*)0);

  if (!cached)
    {
      int i;
      for (i = NUMREGNAMES; i < nios2_num_regs; i++) {
       if (!strcmp (nios2_regs[i].name, "status")) {
        cached = nios2_regs + i;
        break;
       }
      }
      assert (cached);
    }
  return cached;
}
