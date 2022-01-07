
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ud {char* asm_buf; int (* translator ) (struct ud*) ;scalar_t__ inp_end; } ;


 int stub1 (struct ud*) ;
 int ud_decode (struct ud*) ;

extern unsigned int
ud_disassemble(struct ud* u)
{
  int len;
  if (u->inp_end) {
    return 0;
  }
  if ((len = ud_decode(u)) > 0) {
    if (u->translator != ((void*)0)) {
      u->asm_buf[0] = '\0';
      u->translator(u);
    }
  }
  return len;
}
