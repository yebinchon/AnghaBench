
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {int asm_buf_int; int mnemonic; } ;


 int UD_Iinvalid ;
 int memset (void*,int ,int) ;
 int stdin ;
 int ud_set_asm_buffer (struct ud*,int ,int) ;
 int ud_set_input_file (struct ud*,int ) ;
 int ud_set_mode (struct ud*,int) ;
 int ud_set_pc (struct ud*,int ) ;

extern void
ud_init(struct ud* u)
{
  memset((void*)u, 0, sizeof(struct ud));
  ud_set_mode(u, 16);
  u->mnemonic = UD_Iinvalid;
  ud_set_pc(u, 0);

  ud_set_input_file(u, stdin);


  ud_set_asm_buffer(u, u->asm_buf_int, sizeof(u->asm_buf_int));
}
